import 'package:json_annotation/json_annotation.dart';

part 'user_location_trace.g.dart';

@JsonSerializable()
class CarrierInfoModel {
  String? id;
  String? carrierName;
  String? isoCountryCode;
  String? mobileCountryCode;
  String? mobileNetworkOperator;
  String? mobileNetworkCode;
  bool? allowsVOIP;
  String? radioType;
  String? networkGeneration;
  int? cid;
  int? lac;

  CarrierInfoModel({
    this.id,
    this.carrierName,
    this.isoCountryCode,
    this.mobileCountryCode,
    this.mobileNetworkOperator,
    this.mobileNetworkCode,
    this.allowsVOIP,
    this.radioType,
    this.networkGeneration,
    this.cid,
    this.lac,
  });

  factory CarrierInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CarrierInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$CarrierInfoModelToJson(this);
}

@JsonSerializable()
class PackageInfoModel {
  String? appName;
  String? packageName;
  String? version;
  String? buildNumber;
  String? buildSignature;
  String? installerStore;

  PackageInfoModel({
    this.appName,
    this.packageName,
    this.version,
    this.buildNumber,
    this.buildSignature,
    this.installerStore,
  });

  factory PackageInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PackageInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$PackageInfoModelToJson(this);
}

// =============================================
// ******* Telephony Info *******
// =============================================
@JsonSerializable()
class TelephonyInfoModel {
  int? networkType;
  String? networkName;
  String? networkOperatorName;
  String? networkOperator;
  String? simOperator;
  String? simOperatorName;
  int? activityType;
  String? activityName;
  bool? isNetworkRoaming;
  bool? isSmsCapable;
  int? callStateType;
  String? callStateName;
  int? cellularDataStateType;
  String? cellularDataStateName;
  int? phoneType;
  String? phoneTypeName;
  bool? requestPhoneAndSmsPermissions;
  bool? requestPhonePermissions;
  bool? requestSmsPermissions;
  int? serviceStateType;
  String? serviceStateName;
  List<SignalStrengths>? signalStrengths;
  int? simStateType;
  String? simStateName;

  TelephonyInfoModel({
    this.networkType,
    this.networkName,
    this.networkOperatorName,
    this.networkOperator,
    this.simOperator,
    this.simOperatorName,
    this.activityType,
    this.activityName,
    this.isNetworkRoaming,
    this.isSmsCapable,
    this.callStateType,
    this.callStateName,
    this.cellularDataStateType,
    this.cellularDataStateName,
    this.phoneType,
    this.phoneTypeName,
    this.requestPhoneAndSmsPermissions,
    this.requestPhonePermissions,
    this.requestSmsPermissions,
    this.serviceStateType,
    this.serviceStateName,
    this.signalStrengths,
    this.simStateType,
    this.simStateName,
  });

  factory TelephonyInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TelephonyInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$TelephonyInfoModelToJson(this);
}

@JsonSerializable()
class SignalStrengths {
  int? type;
  String? name;
  SignalStrengths({
    this.type,
    this.name,
  });

  factory SignalStrengths.fromJson(Map<String, dynamic> json) =>
      _$SignalStrengthsFromJson(json);
  Map<String, dynamic> toJson() => _$SignalStrengthsToJson(this);
}

@JsonSerializable()
class WiFiInfoModel {
  String? sSID;
  String? bSSID;
  num? currentSignalStrength;
  num? frequency;
  String? ip;
  WiFiInfoModel({
    this.sSID,
    this.bSSID,
    this.currentSignalStrength,
    this.frequency,
    this.ip,
  });

  factory WiFiInfoModel.fromJson(Map<String, dynamic> json) =>
      _$WiFiInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$WiFiInfoModelToJson(this);
}

@JsonSerializable()
class DeviceInformationModel {
  String? imeiNo;
  String? modelName;
  String? manufacturer;
  int? apiLevel;
  String? deviceName;
  String? productName;
  String? cpuType;
  String? hardware;
  String? platformVersion;

  DeviceInformationModel({
    this.imeiNo,
    this.modelName,
    this.manufacturer,
    this.apiLevel,
    this.deviceName,
    this.productName,
    this.cpuType,
    this.hardware,
    this.platformVersion,
  });

  factory DeviceInformationModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceInformationModelFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceInformationModelToJson(this);
}

//=================================================================
@JsonSerializable()
class AndroidDeviceInfoModel {
  String? versionSecurityPatch;
  int? versionSdkInt;
  String? versionRelease;
  int? versionPreviewSdkInt;
  String? versionIncremental;
  String? versionCodename;
  String? versionBaseOS;
  String? board;
  String? bootloader;
  String? brand;
  String? device;
  String? display;
  String? fingerprint;
  String? hardware;
  String? host;
  String? id;
  String? manufacturer;
  String? model;
  String? product;
  List<String>? supported32BitAbis;
  List<String>? supported64BitAbis;
  List<String>? supportedAbis;
  String? tags;
  String? type;
  bool? isPhysicalDevice;
  List<String>? systemFeatures;
  double? displaySizeInches;

  double? displayWidthPixels;
  double? displayWidthInches;
  double? displayHeightPixels;
  double? displayHeightInches;
  double? displayXDpi;
  double? displayYDpi;

  AndroidDeviceInfoModel({
    this.versionSecurityPatch,
    this.versionSdkInt,
    this.versionRelease,
    this.versionPreviewSdkInt,
    this.versionIncremental,
    this.versionCodename,
    this.versionBaseOS,
    this.board,
    this.bootloader,
    this.brand,
    this.device,
    this.display,
    this.fingerprint,
    this.hardware,
    this.host,
    this.id,
    this.manufacturer,
    this.model,
    this.product,
    this.supported32BitAbis,
    this.supported64BitAbis,
    this.supportedAbis,
    this.tags,
    this.type,
    this.isPhysicalDevice,
    this.systemFeatures,
    this.displaySizeInches,
    this.displayWidthPixels,
    this.displayWidthInches,
    this.displayHeightPixels,
    this.displayHeightInches,
    this.displayXDpi,
    this.displayYDpi,
  });

  factory AndroidDeviceInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AndroidDeviceInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$AndroidDeviceInfoModelToJson(this);
}

@JsonSerializable()
class LinuxDeviceInfoModel {
  String? name;
  String? version;
  String? id;
  List<String>? idLike;
  String? versionCodename;
  String? versionId;
  String? prettyName;
  String? buildId;
  String? variant;
  String? variantId;
  String? machineId;

  LinuxDeviceInfoModel({
    this.name,
    this.version,
    this.id,
    this.idLike,
    this.versionCodename,
    this.versionId,
    this.prettyName,
    this.buildId,
    this.variant,
    this.variantId,
    this.machineId,
  });

  factory LinuxDeviceInfoModel.fromJson(Map<String, dynamic> json) =>
      _$LinuxDeviceInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$LinuxDeviceInfoModelToJson(this);
}
