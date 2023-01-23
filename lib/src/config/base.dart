// ignore_for_file: unused_import

import 'package:get/get.dart';

import '../controllers/location_controller.dart';
import '../controllers/user_location_trace_controller.dart';

class Base {
  final locationC = Get.put(LocationController());
  final userLocationTraceC = Get.put(UserLocationTraceController());
}
