import 'package:intl/intl.dart';

//-----------------------------------------------------------
// ************ Date Time and Year ************
//-----------------------------------------------------------
String getCurrentTime() {
  return DateFormat().add_Hms().format(DateTime.now());
}

String getCurrentYear() {
  return DateFormat().add_y().format(DateTime.now());
}

String getAMPMCurrentTime() {
  return DateFormat('hh:mm a').format(DateTime.now());
}

DateTime getCurrentDateTime() {
  return DateTime.now();
}

String formatDate({required String date, String? format}) {
  return DateFormat(format ?? 'd MMM y').format(DateTime.parse(date));
}

///Format Current Date Time
String formatDateTime({String? date, String? format}) {
  return DateFormat(format ?? 'd MMM y hh:mm:ss a').format(DateTime.now());
}

String getCurrrentDateForWF() {
  return DateFormat('yyyy-MM-dd').format(DateTime.now());
}

int getDays({required String startDate, required String endDate}) {
  return DateTime.parse(endDate).difference(DateTime.parse(startDate)).inDays;
}

int? convertStatusCode(code) {
  return int.tryParse('$code');
}

var formatter = NumberFormat('#,##,000');
