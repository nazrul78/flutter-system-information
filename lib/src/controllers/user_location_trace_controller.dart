import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:carrier_info/carrier_info.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_information/device_information.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sim_country_code/flutter_sim_country_code.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:telephony/telephony.dart';
import 'package:wifi_iot/wifi_iot.dart';

import '../helpers/date_time_helper.dart';
import '../helpers/log.dart';
import '../models/user_location_trace.dart';
import 'location_controller.dart';

class UserLocationTraceController extends GetxController {
  final _dio = Dio();
  final deviceInfoPlugin = DeviceInfoPlugin();
  // late CarrierData carrierInfo;

  // All Models
  final packageInfo = Rx<PackageInfoModel?>(null);
  final telephonyInfoModel = Rx<TelephonyInfoModel?>(null);
  final carrierInfo = Rx<CarrierInfoModel?>(null);
  final wiFiInfo = Rx<WiFiInfoModel?>(null);
  final deviceInformation = Rx<DeviceInformationModel?>(null);
  final androidDeviceInfo = Rx<AndroidDeviceInfoModel?>(null);
  final iPAddress = RxString('');
  final phoneIPAddress = RxString('');
  final simCountryCode = RxString('');
  final int = RxInt(0);

  @override
  Future<void> onReady() async {
    // super.onReady();
    // kLog('Init Ip Address');
    // getIpAddress();
    // kLog('init carrier info');
    // initCarrierInfo();
    // kLog('init device info');
    // initDeviceInfo();
    // kLog('init package info');
    // initPackageInfo();
    // kLog('init Wifi');
    // getWiFiInfo();
    // kLog('Telephony Info');
    // // getTelephonyInfo();
    // kLog('Device Info');
    // initDeviceInformation();
    // kLog('On Ready');

    // Timer.periodic(Duration(seconds: 15), (Timer t) {
    //   kLog('Habibur Rahman ${int.value}');
    //   int.value++;
    //   addUserLocation();
    // });
  }

  @override
  void onInit() {
    super.onInit();

    kLog('Init Ip Address');
    getIpAddress();
    kLog('init carrier info');
    initCarrierInfo();
    kLog('init device info');
    initDeviceInfo();
    kLog('init package info');
    initPackageInfo();
    kLog('init Wifi');
    getWiFiInfo();
    kLog('Telephony Info');
    // getTelephonyInfo();
    kLog('Device Info');
    initDeviceInformation();
  }

  // init carrier info
  Future<void> getIpAddress() async {
    try {
      final res = await _dio.get<String>('https://api.ipify.org');
      iPAddress.value = res.data!;
      // kLog('IP Address ${iPAddress.value}');
    } catch (e) {
      kLog(e.toString());
    }
  }

  Future<void> getWiFiInfo() async {
    try {
      WiFiForIoTPlugin.isEnabled().then(
        (val) async {
          final data = {
            'sSID': await WiFiForIoTPlugin.getSSID(),
            'bSSID': await WiFiForIoTPlugin.getBSSID(),
            'currentSignalStrength':
                await WiFiForIoTPlugin.getCurrentSignalStrength(),
            'frequency': await WiFiForIoTPlugin.getFrequency(),
            'ip': await WiFiForIoTPlugin.getIP(),
            // 'f': await WiFiForIoTPlugin.getWiFiAPSSID(),
          };

          final wiFiInfoData = WiFiInfoModel.fromJson(data);
          wiFiInfo.value = wiFiInfoData;
          // kLog(jsonEncode(wiFiInfo.value));
        },
      );
    } catch (e) {
      kLog('Cannot access getIpAddress: $e');
    }
  }

  Future<void> getTelephonyInfo() async {
    try {
      final Telephony telephonyInfo = Telephony.instance;
      final bool? result = await telephonyInfo.requestPhoneAndSmsPermissions;
      if (result != null && result) {
        /// NetworkType Represents types of networks for a device.
        final networkType = await telephonyInfo.dataNetworkType;
        final activity = await telephonyInfo.dataActivity;
        final callState = await telephonyInfo.callState;
        final cellularDataState = await telephonyInfo.cellularDataState;
        final phoneType = await telephonyInfo.phoneType;
        final serviceState = await telephonyInfo.serviceState;
        final signalStrengths = await telephonyInfo.signalStrengths;
        final simState = await telephonyInfo.simState;

        final data = {
          'networkType': networkType.index,
          'networkName': networkType.name,
          'networkOperatorName': await telephonyInfo.networkOperatorName,
          'networkOperator': await telephonyInfo.networkOperator,
          'simOperator': await telephonyInfo.simOperator,
          'simOperatorName': await telephonyInfo.simOperatorName,
          'activityType': activity.index,
          'activityName': activity.name,
          'isNetworkRoaming': await telephonyInfo.isNetworkRoaming,
          'isSmsCapable': await telephonyInfo.isSmsCapable,
          'callStateType': callState.index,
          'callStateName': callState.name,
          'cellularDataStateType': cellularDataState.index,
          'cellularDataStateName': cellularDataState.name,
          'phoneType': phoneType.index,
          'phoneTypeName': phoneType.name,
          'requestPhoneAndSmsPermissions':
              await telephonyInfo.requestPhoneAndSmsPermissions,
          'requestPhonePermissions':
              await telephonyInfo.requestPhonePermissions,
          'requestSmsPermissions': await telephonyInfo.requestSmsPermissions,
          'serviceStateType': serviceState.index,
          'serviceStateName': serviceState.name,
          'signalStrengths': signalStrengths.map((x) {
            return {
              'type': x.index,
              'name': x.name,
            };
          }).toList(),
          'simStateType': simState.index,
          'simStateName': simState.name,
        };

        final telephonyInfoData = TelephonyInfoModel.fromJson(data);
        telephonyInfoModel.value = telephonyInfoData;
        // kLog(jsonEncode(telephonyInfoModel.value));
      }
    } catch (e) {
      kLog(e);
    }
  }

  Future<void> getOperatingSystem() async => Platform.operatingSystem;
  Future<void> getScreenResolution() async =>
      '${window.physicalSize.width} X ${window.physicalSize.height}';

  // init carrier info
  Future<void> initCarrierInfo() async {
    await [
      Permission.locationWhenInUse,
      Permission.phone,
    ].request();

    try {
      final data = await CarrierInfo.all;
      carrierInfo.value = CarrierInfoModel(
        carrierName: data!.carrierName,
        isoCountryCode: data.isoCountryCode,
        mobileCountryCode: data.mobileCountryCode,
        mobileNetworkOperator: data.mobileNetworkOperator,
        mobileNetworkCode: data.mobileNetworkCode,
        allowsVOIP: data.allowsVOIP,
        radioType: data.radioType,
        networkGeneration: data.networkGeneration,
        cid: data.cid,
        lac: data.lac,
      );
      kLog(jsonEncode(carrierInfo.value));
    } catch (e) {
      kLog(e.toString());
    }
  }

  Future<void> initSimCountryCode() async {
    try {
      final data = await FlutterSimCountryCode.simCountryCode;
      simCountryCode.value = data!;
      // kLog(simCountryCode.value);
    } on PlatformException catch (e) {
      kLog(e);
    }
  }

  Future<void> initDeviceInformation() async {
    try {
      final data = {
        'imeiNo': await DeviceInformation.deviceIMEINumber,
        'modelName': await DeviceInformation.deviceModel,
        'manufacturer': await DeviceInformation.deviceManufacturer,
        'apiLevel': await DeviceInformation.apiLevel,
        'deviceName': await DeviceInformation.deviceName,
        'productName': await DeviceInformation.productName,
        'cpuType': await DeviceInformation.cpuName,
        'hardware': await DeviceInformation.hardware,
        'platformVersion': await DeviceInformation.platformVersion,
      };
      final deviceInformationData = DeviceInformationModel.fromJson(data);
      deviceInformation.value = deviceInformationData;

      kLog(jsonEncode(deviceInformation.value));
    } on PlatformException catch (e) {
      kLog(e);
    }
  }

  // init device info
  Future<void> initDeviceInfo() async {
    try {
      final data = await deviceInfoPlugin.androidInfo;
      if (Platform.isAndroid) {
        androidDeviceInfo.value = AndroidDeviceInfoModel(
          versionSecurityPatch: data.version.securityPatch,
          versionSdkInt: data.version.sdkInt,
          versionRelease: data.version.release,
          versionPreviewSdkInt: data.version.previewSdkInt,
          versionIncremental: data.version.incremental,
          versionCodename: data.version.codename,
          versionBaseOS: data.version.baseOS,
          board: data.board,
          bootloader: data.bootloader,
          brand: data.brand,
          device: data.device,
          display: data.display,
          fingerprint: data.fingerprint,
          hardware: data.hardware,
          host: data.host,
          id: data.id,
          manufacturer: data.manufacturer,
          model: data.model,
          product: data.product,
          supported32BitAbis: data.supported32BitAbis,
          supported64BitAbis: data.supported64BitAbis,
          supportedAbis: data.supportedAbis,
          tags: data.tags,
          type: data.type,
          isPhysicalDevice: data.isPhysicalDevice,
          systemFeatures: data.systemFeatures,
          displaySizeInches:
              ((data.displayMetrics.sizeInches * 10).roundToDouble() / 10),
          displayWidthPixels: data.displayMetrics.widthPx,
          displayWidthInches: data.displayMetrics.widthInches,
          displayHeightPixels: data.displayMetrics.heightPx,
          displayHeightInches: data.displayMetrics.heightInches,
          displayXDpi: data.displayMetrics.xDpi,
          displayYDpi: data.displayMetrics.yDpi,
        );
      }
    } on PlatformException catch (e) {
      kLog(e);
    }
  }

  // init package info
  Future<void> initPackageInfo() async {
    final packageInfoData = await PackageInfo.fromPlatform();

    packageInfo.value = PackageInfoModel(
      appName: packageInfoData.appName,
      packageName: packageInfoData.packageName,
      version: packageInfoData.version,
      buildNumber: packageInfoData.buildNumber,
      buildSignature: packageInfoData.buildSignature,
      installerStore: packageInfoData.installerStore,
    );
  }

  addUserLocation() async {
    try {
      final locationC = Get.put(LocationController());
      // kLog(locationC.currentLatLng!.latitude);
      // kLog(locationC.currentLatLng!.longitude);

      final body = {
        'apiKey': 'ZWR1Y2l0aW9uQkRBMTIzNDU2Nzg5',
        'appCode': 'SURVEY',
        'countryCode': 'BD',
        'username': 'username',
        'uiCodes': ['236541'],
        'modelList': [
          {
            'appCode': packageInfo.value!.appName!.toUpperCase(),
            'appName': packageInfo.value!.appName,
            'empCode': 'null',
            'empName': 'null',
            'latitude': locationC.currentLatLng != null
                ? locationC.currentLatLng!.latitude.toString()
                : 'N/A',
            'longitude': locationC.currentLatLng != null
                ? locationC.currentLatLng!.longitude.toString()
                : 'N/A',
            'platform': Platform.operatingSystem,
            'username': 'username',
            'personName': 'fullName',
            'visitDate': getCurrrentDateForWF().toString(),
            'visitTime':
                formatDateTime(format: 'yyyy-MM-dd hh:mm:ss').toString(),
            'wsIp': wiFiInfo.value!.ip,
            'wsName':
                '${androidDeviceInfo.value!.manufacturer} ${androidDeviceInfo.value!.model} ${androidDeviceInfo.value!.versionRelease}',
            'status': 'null',
            'ip': iPAddress.value.isNotEmpty ? iPAddress.value : 'N/A',
            'mac': wiFiInfo.value!.bSSID,
            'imei': deviceInformation.value!.imeiNo,
            'frequency': wiFiInfo.value!.frequency.toString(),
            'signalStrengthWifi': wiFiInfo.value!.currentSignalStrength,
            'signalStrengthMobile': '0.0',
            'networkCountryIso': carrierInfo.value!.isoCountryCode,
            'networkOperator': telephonyInfoModel.value!.networkOperator,
            'networkType': telephonyInfoModel.value!.networkType.toString(),
            'networkOperatorName':
                telephonyInfoModel.value!.networkOperatorName,
            'simCountryIso': simCountryCode.value,
            'simOperatorName': telephonyInfoModel.value!.simOperatorName,
            'simOperator': telephonyInfoModel.value!.simOperator,
            'agencyCode': '',
            'agencyId': '',
            'projectCode': 'null',
            'assignId': '',
            'areaLevelFullCode': 'null',
            'areaType': 'null',
            'areaLevel': 'null',
            'refNumber': '2b5432a8-7d3b-46d2-b871-c5aba3f51323',
            'broadcastEnabled': 'false'
          }
        ]
      };
      kLog(jsonEncode(body));

      // final res = await _dio.post(
      //   'http://123.200.22.150:9006/add_user_location_traces',
      //   data: body,
      //   options: Options(
      //     followRedirects: false,
      //     validateStatus: (status) => true,
      //     headers: {
      //       'Content-Type': 'application/json',
      //       'latLng': '23.90560,93.094535',
      //     },
      //   ),
      // );
      // kLog(res);
    } on DioError catch (e) {
      kLog(e.message);
    }
  }
}
