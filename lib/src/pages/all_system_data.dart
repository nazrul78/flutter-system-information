import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_system_info/src/helpers/k_text.dart';

import '../config/base.dart';

class AllSystemData extends StatelessWidget with Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(
          text: 'All System Data',
          color: Colors.white,
          fontSize: 16,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              shadowColor: Colors.black,
              elevation: 2,
              child: Builder(builder: (context) {
                // final item = userLocationTraceC.wiFiInfo.value;
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KText(
                        maxLines: 3,
                        bold: true,
                        text: 'System Info',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      Divider(thickness: 2),
                      SizedBox(
                        // height: 190,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  KText(text: 'SSID'),
                                  Spacer(),
                                  KText(
                                    text: '',
                                    bold: true,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  KText(text: 'BSSID / Mac'),
                                  Spacer(),
                                  KText(
                                    text: '',
                                    bold: true,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  KText(text: 'Frequency'),
                                  Spacer(),
                                  KText(
                                    text: '',
                                    bold: true,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  KText(text: 'WiFi Signal Strength'),
                                  Spacer(),
                                  KText(
                                    text: '',
                                    bold: true,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  KText(text: 'IP'),
                                  Spacer(),
                                  KText(
                                    text: '',
                                    bold: true,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
