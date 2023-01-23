import 'dart:io';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path_provider_android/path_provider_android.dart';

class HiveService extends GetxService {
  Future<void> onInitForApp() async {
    Directory appDocumentDir = await getApplicationDocumentsDirectory();

    Hive.init(appDocumentDir.path);

    await registerAdapters();

    await openBoxes();

    print('Hive initialized for app');
  }

// For background
  Future<void> onInitForBackground() async {
    if (Platform.isAndroid) PathProviderAndroid.registerWith();

    Directory appDocumentDir = await getApplicationDocumentsDirectory();

    Hive.init(appDocumentDir.path);

    await registerAdapters();

    await openBoxes();

    print('Hive initialized for background service');

    await Hive.close();
  }

  Future<void> openBoxes() async {
    // await Hive.openBox<UserImage>('user_image');
  }

  Future<void> registerAdapters() async {
    // Hive.registerAdapter(UserAdapter(), override: true);
  }
}
