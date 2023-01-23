// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location_trace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarrierInfoModel _$CarrierInfoModelFromJson(Map<String, dynamic> json) =>
    CarrierInfoModel(
      id: json['id'] as String?,
      carrierName: json['carrierName'] as String?,
      isoCountryCode: json['isoCountryCode'] as String?,
      mobileCountryCode: json['mobileCountryCode'] as String?,
      mobileNetworkOperator: json['mobileNetworkOperator'] as String?,
      mobileNetworkCode: json['mobileNetworkCode'] as String?,
      allowsVOIP: json['allowsVOIP'] as bool?,
      radioType: json['radioType'] as String?,
      networkGeneration: json['networkGeneration'] as String?,
      cid: json['cid'] as int?,
      lac: json['lac'] as int?,
    );

Map<String, dynamic> _$CarrierInfoModelToJson(CarrierInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carrierName': instance.carrierName,
      'isoCountryCode': instance.isoCountryCode,
      'mobileCountryCode': instance.mobileCountryCode,
      'mobileNetworkOperator': instance.mobileNetworkOperator,
      'mobileNetworkCode': instance.mobileNetworkCode,
      'allowsVOIP': instance.allowsVOIP,
      'radioType': instance.radioType,
      'networkGeneration': instance.networkGeneration,
      'cid': instance.cid,
      'lac': instance.lac,
    };

PackageInfoModel _$PackageInfoModelFromJson(Map<String, dynamic> json) =>
    PackageInfoModel(
      appName: json['appName'] as String?,
      packageName: json['packageName'] as String?,
      version: json['version'] as String?,
      buildNumber: json['buildNumber'] as String?,
      buildSignature: json['buildSignature'] as String?,
      installerStore: json['installerStore'] as String?,
    );

Map<String, dynamic> _$PackageInfoModelToJson(PackageInfoModel instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'packageName': instance.packageName,
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'buildSignature': instance.buildSignature,
      'installerStore': instance.installerStore,
    };

TelephonyInfoModel _$TelephonyInfoModelFromJson(Map<String, dynamic> json) =>
    TelephonyInfoModel(
      networkType: json['networkType'] as int?,
      networkName: json['networkName'] as String?,
      networkOperatorName: json['networkOperatorName'] as String?,
      networkOperator: json['networkOperator'] as String?,
      simOperator: json['simOperator'] as String?,
      simOperatorName: json['simOperatorName'] as String?,
      activityType: json['activityType'] as int?,
      activityName: json['activityName'] as String?,
      isNetworkRoaming: json['isNetworkRoaming'] as bool?,
      isSmsCapable: json['isSmsCapable'] as bool?,
      callStateType: json['callStateType'] as int?,
      callStateName: json['callStateName'] as String?,
      cellularDataStateType: json['cellularDataStateType'] as int?,
      cellularDataStateName: json['cellularDataStateName'] as String?,
      phoneType: json['phoneType'] as int?,
      phoneTypeName: json['phoneTypeName'] as String?,
      requestPhoneAndSmsPermissions:
          json['requestPhoneAndSmsPermissions'] as bool?,
      requestPhonePermissions: json['requestPhonePermissions'] as bool?,
      requestSmsPermissions: json['requestSmsPermissions'] as bool?,
      serviceStateType: json['serviceStateType'] as int?,
      serviceStateName: json['serviceStateName'] as String?,
      signalStrengths: (json['signalStrengths'] as List<dynamic>?)
          ?.map((e) => SignalStrengths.fromJson(e as Map<String, dynamic>))
          .toList(),
      simStateType: json['simStateType'] as int?,
      simStateName: json['simStateName'] as String?,
    );

Map<String, dynamic> _$TelephonyInfoModelToJson(TelephonyInfoModel instance) =>
    <String, dynamic>{
      'networkType': instance.networkType,
      'networkName': instance.networkName,
      'networkOperatorName': instance.networkOperatorName,
      'networkOperator': instance.networkOperator,
      'simOperator': instance.simOperator,
      'simOperatorName': instance.simOperatorName,
      'activityType': instance.activityType,
      'activityName': instance.activityName,
      'isNetworkRoaming': instance.isNetworkRoaming,
      'isSmsCapable': instance.isSmsCapable,
      'callStateType': instance.callStateType,
      'callStateName': instance.callStateName,
      'cellularDataStateType': instance.cellularDataStateType,
      'cellularDataStateName': instance.cellularDataStateName,
      'phoneType': instance.phoneType,
      'phoneTypeName': instance.phoneTypeName,
      'requestPhoneAndSmsPermissions': instance.requestPhoneAndSmsPermissions,
      'requestPhonePermissions': instance.requestPhonePermissions,
      'requestSmsPermissions': instance.requestSmsPermissions,
      'serviceStateType': instance.serviceStateType,
      'serviceStateName': instance.serviceStateName,
      'signalStrengths': instance.signalStrengths,
      'simStateType': instance.simStateType,
      'simStateName': instance.simStateName,
    };

SignalStrengths _$SignalStrengthsFromJson(Map<String, dynamic> json) =>
    SignalStrengths(
      type: json['type'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SignalStrengthsToJson(SignalStrengths instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
    };

WiFiInfoModel _$WiFiInfoModelFromJson(Map<String, dynamic> json) =>
    WiFiInfoModel(
      sSID: json['sSID'] as String?,
      bSSID: json['bSSID'] as String?,
      currentSignalStrength: json['currentSignalStrength'] as num?,
      frequency: json['frequency'] as num?,
      ip: json['ip'] as String?,
    );

Map<String, dynamic> _$WiFiInfoModelToJson(WiFiInfoModel instance) =>
    <String, dynamic>{
      'sSID': instance.sSID,
      'bSSID': instance.bSSID,
      'currentSignalStrength': instance.currentSignalStrength,
      'frequency': instance.frequency,
      'ip': instance.ip,
    };

DeviceInformationModel _$DeviceInformationModelFromJson(
        Map<String, dynamic> json) =>
    DeviceInformationModel(
      imeiNo: json['imeiNo'] as String?,
      modelName: json['modelName'] as String?,
      manufacturer: json['manufacturer'] as String?,
      apiLevel: json['apiLevel'] as int?,
      deviceName: json['deviceName'] as String?,
      productName: json['productName'] as String?,
      cpuType: json['cpuType'] as String?,
      hardware: json['hardware'] as String?,
      platformVersion: json['platformVersion'] as String?,
    );

Map<String, dynamic> _$DeviceInformationModelToJson(
        DeviceInformationModel instance) =>
    <String, dynamic>{
      'imeiNo': instance.imeiNo,
      'modelName': instance.modelName,
      'manufacturer': instance.manufacturer,
      'apiLevel': instance.apiLevel,
      'deviceName': instance.deviceName,
      'productName': instance.productName,
      'cpuType': instance.cpuType,
      'hardware': instance.hardware,
      'platformVersion': instance.platformVersion,
    };

AndroidDeviceInfoModel _$AndroidDeviceInfoModelFromJson(
        Map<String, dynamic> json) =>
    AndroidDeviceInfoModel(
      versionSecurityPatch: json['versionSecurityPatch'] as String?,
      versionSdkInt: json['versionSdkInt'] as int?,
      versionRelease: json['versionRelease'] as String?,
      versionPreviewSdkInt: json['versionPreviewSdkInt'] as int?,
      versionIncremental: json['versionIncremental'] as String?,
      versionCodename: json['versionCodename'] as String?,
      versionBaseOS: json['versionBaseOS'] as String?,
      board: json['board'] as String?,
      bootloader: json['bootloader'] as String?,
      brand: json['brand'] as String?,
      device: json['device'] as String?,
      display: json['display'] as String?,
      fingerprint: json['fingerprint'] as String?,
      hardware: json['hardware'] as String?,
      host: json['host'] as String?,
      id: json['id'] as String?,
      manufacturer: json['manufacturer'] as String?,
      model: json['model'] as String?,
      product: json['product'] as String?,
      supported32BitAbis: (json['supported32BitAbis'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      supported64BitAbis: (json['supported64BitAbis'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      supportedAbis: (json['supportedAbis'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: json['tags'] as String?,
      type: json['type'] as String?,
      isPhysicalDevice: json['isPhysicalDevice'] as bool?,
      systemFeatures: (json['systemFeatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      displaySizeInches: (json['displaySizeInches'] as num?)?.toDouble(),
      displayWidthPixels: (json['displayWidthPixels'] as num?)?.toDouble(),
      displayWidthInches: (json['displayWidthInches'] as num?)?.toDouble(),
      displayHeightPixels: (json['displayHeightPixels'] as num?)?.toDouble(),
      displayHeightInches: (json['displayHeightInches'] as num?)?.toDouble(),
      displayXDpi: (json['displayXDpi'] as num?)?.toDouble(),
      displayYDpi: (json['displayYDpi'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AndroidDeviceInfoModelToJson(
        AndroidDeviceInfoModel instance) =>
    <String, dynamic>{
      'versionSecurityPatch': instance.versionSecurityPatch,
      'versionSdkInt': instance.versionSdkInt,
      'versionRelease': instance.versionRelease,
      'versionPreviewSdkInt': instance.versionPreviewSdkInt,
      'versionIncremental': instance.versionIncremental,
      'versionCodename': instance.versionCodename,
      'versionBaseOS': instance.versionBaseOS,
      'board': instance.board,
      'bootloader': instance.bootloader,
      'brand': instance.brand,
      'device': instance.device,
      'display': instance.display,
      'fingerprint': instance.fingerprint,
      'hardware': instance.hardware,
      'host': instance.host,
      'id': instance.id,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'product': instance.product,
      'supported32BitAbis': instance.supported32BitAbis,
      'supported64BitAbis': instance.supported64BitAbis,
      'supportedAbis': instance.supportedAbis,
      'tags': instance.tags,
      'type': instance.type,
      'isPhysicalDevice': instance.isPhysicalDevice,
      'systemFeatures': instance.systemFeatures,
      'displaySizeInches': instance.displaySizeInches,
      'displayWidthPixels': instance.displayWidthPixels,
      'displayWidthInches': instance.displayWidthInches,
      'displayHeightPixels': instance.displayHeightPixels,
      'displayHeightInches': instance.displayHeightInches,
      'displayXDpi': instance.displayXDpi,
      'displayYDpi': instance.displayYDpi,
    };

LinuxDeviceInfoModel _$LinuxDeviceInfoModelFromJson(
        Map<String, dynamic> json) =>
    LinuxDeviceInfoModel(
      name: json['name'] as String?,
      version: json['version'] as String?,
      id: json['id'] as String?,
      idLike:
          (json['idLike'] as List<dynamic>?)?.map((e) => e as String).toList(),
      versionCodename: json['versionCodename'] as String?,
      versionId: json['versionId'] as String?,
      prettyName: json['prettyName'] as String?,
      buildId: json['buildId'] as String?,
      variant: json['variant'] as String?,
      variantId: json['variantId'] as String?,
      machineId: json['machineId'] as String?,
    );

Map<String, dynamic> _$LinuxDeviceInfoModelToJson(
        LinuxDeviceInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'id': instance.id,
      'idLike': instance.idLike,
      'versionCodename': instance.versionCodename,
      'versionId': instance.versionId,
      'prettyName': instance.prettyName,
      'buildId': instance.buildId,
      'variant': instance.variant,
      'variantId': instance.variantId,
      'machineId': instance.machineId,
    };
