import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:user_system_info/src/pages/home_page.dart';
import 'dart:async';

import '../config/base.dart';
import '../helpers/route.dart';
// import '../pages/main_page.dart';

class ConfigController extends GetxController with Base {
  Future<void> initAppConfig() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Initialize global environment variables
    // await dotenv.load();
    // ---------------------------------------------------

    // Initialize Hive DB
    // await Get.put(HiveService()).onInitForApp();

    //---------To get Location Permission-----------------
    // To get location permition.
    await locationC.getLocationPermission();

    // To listen current latlng after per second.
    await locationC.locationListener();
    //--------------------- End -------------------------

    // Setup App system theme [AppBar & System Navigation]
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    // ignore: deprecated_member_use
    await SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.blue,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.grey[50],
        systemNavigationBarColor: Colors.white,
      ),
    );
    // ---------------------------------------------------

    // Set Orientation [default : portrait]
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // ---------------------------------------------------
  }

// Initialize page after default configuration
  void init() async {
    await 1.delay();
    offAll(HomePage());
    // if ('' != null) {
    //   offAll(HomePage());
    // } else {
    //   offAll(HomePage());
    // }
  }
}
