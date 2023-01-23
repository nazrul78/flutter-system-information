import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

class LocationController extends GetxController {
  Location location = Location();
  final currentLatLng2 = Rx<LatLng?>(LatLng(0.0, 0.0));

  LatLng? currentLatLng;

  /// To listen current location after per second.
  Future<void> locationListener() async {
    final permissionGranted = await location.hasPermission();
    if (permissionGranted != PermissionStatus.denied) {
      location.onLocationChanged.listen(
        (LocationData currentLocation) {
          try {
            if (currentLocation != null) {
              final latLng = LatLng(
                currentLocation.latitude!,
                currentLocation.longitude!,
              );
              // kLog('<<<<< $latLng >>>>>');
              currentLatLng = latLng;
              //=============== To move current location when it changing ===========
              // Get.put(HomeMapViewController()).showCurrentLocationOnMap();
            }
          } catch (e) {
            log(e.toString());
          }
        },
      );
    }
  }

  //Background Location unable
  Future<bool> toggleBackgroundMode({bool enable = false}) async {
    try {
      final bool result = await location.enableBackgroundMode(enable: enable);
      return result;
      // ignore: unused_catch_clause
    } on PlatformException catch (err) {
      return false;
    }
  }

  /// To get current Location data.
  Future<LocationData?> getCurrentLocation() async {
    try {
      final LocationData currentLocation = await location.getLocation();
      if (currentLocation != null) {
        return currentLocation;
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  /// To get current LatLng.
  LatLng? getCurrenLatLng() {
    try {
      if (currentLatLng != null) {
        return currentLatLng;
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  /// To get current Location Permission.
  Future<void> getLocationPermission() async {
    Location locations = Location();
    bool isServiceEnabled;
    PermissionStatus isPermissionGranted;

    isServiceEnabled = await locations.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await locations.requestService();
      if (!isServiceEnabled) {
        return;
      }
    }
    isPermissionGranted = await locations.hasPermission();
    if (isPermissionGranted == PermissionStatus.denied) {
      isPermissionGranted = await locations.requestPermission();
      if (isPermissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

//Call ServerLocation from server and save it in local DB(SQLite) during the initialization of the app (Before login)
// insertServerLocationFirstTime
//   Future<void> initializeTemp() async {
//     await ACMSSharedPreferences.initializePrefs();
// // todo: Have to discuss with farid vai later.
//     if (!ACMSSharedPreferences.contains('lastLatitude')) {
//       ACMSSharedPreferences.setDouble('lastLatitude', 0.0);
//       ACMSSharedPreferences.setDouble('lastLongitude', 0.0);
//     }
//     if (!ACMSSharedPreferences.contains('lastLatitude2')) {
//       ACMSSharedPreferences.setDouble('lastLatitude2', 0.0);
//       ACMSSharedPreferences.setDouble('lastLongitude2', 0.0);
//     }
//     if (!ACMSSharedPreferences.contains('lastLatitude3')) {
//       ACMSSharedPreferences.setDouble('lastLatitude3', 0.0);
//       ACMSSharedPreferences.setDouble('lastLongitude3', 0.0);
//     }

//     if (!ACMSSharedPreferences.contains('lastLatitude4')) {
//       ACMSSharedPreferences.setDouble('lastLatitude4', 0.0);
//       ACMSSharedPreferences.setDouble('lastLongitude4', 0.0);
//     }

//     if (!ACMSSharedPreferences.contains('lastLatitude5')) {
//       ACMSSharedPreferences.setDouble('lastLatitude5', 0.0);
//       ACMSSharedPreferences.setDouble('lastLongitude5', 0.0);
//     }
//   }

  ///This method created by Sir.
  // LatLng getUniqueLatLng({required double lat, required double lng}) {
  //   double lng1 = lng;
  //   double delta = 0.00001;
  //   double? lastLatitude = ACMSSharedPreferences.getDouble('lastLatitude');
  //   double? lastlongitude = ACMSSharedPreferences.getDouble('lastLongitude');

  //   double? lastLatitude2 = ACMSSharedPreferences.getDouble('lastLatitude2');
  //   double? lastlongitude2 = ACMSSharedPreferences.getDouble('lastLongitude2');

  //   double? lastLatitude3 = ACMSSharedPreferences.getDouble('lastLatitude3');
  //   double? lastlongitude3 = ACMSSharedPreferences.getDouble('lastLongitude3');

  //   double? lastLatitude4 = ACMSSharedPreferences.getDouble('lastLatitude4');
  //   double? lastlongitude4 = ACMSSharedPreferences.getDouble('lastLongitude4');

  //   double? lastLatitude5 = ACMSSharedPreferences.getDouble('lastLatitude5');
  //   double? lastlongitude5 = ACMSSharedPreferences.getDouble('lastLongitude5');

  //   if ('$lat$lng' == '$lastLatitude$lastlongitude') {
  //     lng1 = lng + delta;
  //   }

  //   if ('$lat$lng' == '$lastLatitude2$lastlongitude2') {
  //     lng1 = lng + delta * 2;
  //   }

  //   if ('$lat$lng' == '$lastLatitude3$lastlongitude3') {
  //     lng1 = lng + delta * 3;
  //   }

  //   if ('$lat$lng' == '$lastLatitude4$lastlongitude4') {
  //     lng1 = lng + delta * 4;
  //   }

  //   if ('$lat$lng' == '$lastLatitude5$lastlongitude5') {
  //     lng1 = lng + delta * 5;
  //   }
  //   ACMSSharedPreferences.setDouble(
  //       'lastLatitude5', ACMSSharedPreferences.getDouble('lastLatitude4')!);
  //   ACMSSharedPreferences.setDouble(
  //       'lastLongitude5', ACMSSharedPreferences.getDouble('lastLongitude4')!);

  //   ACMSSharedPreferences.setDouble(
  //       'lastLatitude4', ACMSSharedPreferences.getDouble('lastLatitude3')!);
  //   ACMSSharedPreferences.setDouble(
  //       'lastLongitude4', ACMSSharedPreferences.getDouble('lastLongitude3')!);

  //   ACMSSharedPreferences.setDouble(
  //       'lastLatitude3', ACMSSharedPreferences.getDouble('lastLatitude2')!);
  //   ACMSSharedPreferences.setDouble(
  //       'lastLongitude3', ACMSSharedPreferences.getDouble('lastLongitude2')!);

  //   ACMSSharedPreferences.setDouble(
  //       'lastLatitude2', ACMSSharedPreferences.getDouble('lastLatitude')!);
  //   ACMSSharedPreferences.setDouble(
  //       'lastLongitude2', ACMSSharedPreferences.getDouble('lastLongitude')!);

  //   ACMSSharedPreferences.setDouble('lastLatitude', lat);
  //   ACMSSharedPreferences.setDouble('lastLongitude', lng1);
  //   return LatLng(lat, lng1);
  // }
}
