import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_system_info/src/config/base.dart';
import 'package:user_system_info/src/helpers/k_text.dart';
import 'package:user_system_info/src/helpers/log.dart';
import 'package:user_system_info/src/helpers/route.dart';

import 'all_system_data.dart';

class HomePage extends StatelessWidget with Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(
          text: 'User System Data',
          color: Colors.white,
          fontSize: 16,
        ),
        centerTitle: true,
      ),
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: FlutterLogo(size: 30),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: KText(
                text: 'Data List',
                fontWeight: FontWeight.w600,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings_suggest),
              title: KText(text: 'All System Data'),
              dense: true,
              onTap: () {
                push(AllSystemData());
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            if (userLocationTraceC.wiFiInfo.value != null)
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 2,
                  child: Builder(builder: (context) {
                    final item = userLocationTraceC.wiFiInfo.value;
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            maxLines: 3,
                            bold: true,
                            text: 'WiFi Info',
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
                                        text: '${item!.sSID}',
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
                                        text: '${item.bSSID}',
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
                                        text: '${item.frequency}',
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
                                        text: '${item.currentSignalStrength}',
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
                                        text: '${item.ip}',
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
            SizedBox(height: 10),
            if (userLocationTraceC.deviceInformation.value != null)
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 2,
                  child: Builder(builder: (context) {
                    final item = userLocationTraceC.deviceInformation.value;
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            maxLines: 3,
                            bold: true,
                            text: 'Device Information',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
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
                                      KText(text: 'Imei No'),
                                      Spacer(),
                                      KText(
                                        text: '${item!.imeiNo}',
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
                                      KText(text: 'Model Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.modelName}',
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
                                      KText(text: 'Manufacturer'),
                                      Spacer(),
                                      KText(
                                        text: '${item.manufacturer}',
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
                                      KText(text: 'Api Level'),
                                      Spacer(),
                                      KText(
                                        text: '${item.apiLevel}',
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
                                      KText(text: 'Device Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.deviceName}',
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
                                      KText(text: 'Product Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.productName}',
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
                                      KText(text: 'CPU Type'),
                                      Spacer(),
                                      KText(
                                        text: '${item.cpuType}',
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
                                      KText(text: 'Hardware'),
                                      Spacer(),
                                      KText(
                                        text: '${item.hardware}',
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
                                      KText(text: 'Platform Version'),
                                      Spacer(),
                                      KText(
                                        text: '${item.platformVersion}',
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
            SizedBox(height: 10),
            if (userLocationTraceC.androidDeviceInfo.value != null)
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 2,
                  child: Builder(builder: (context) {
                    final item = userLocationTraceC.androidDeviceInfo.value;
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            maxLines: 3,
                            bold: true,
                            text: 'Android Device Info',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
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
                                      KText(text: 'Version Security Patch'),
                                      Spacer(),
                                      KText(
                                        text: '${item!.versionSecurityPatch}',
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
                                      KText(text: 'Version SDK Int'),
                                      Spacer(),
                                      KText(
                                        text: '${item.versionSdkInt}',
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
                                      KText(text: 'Version Release'),
                                      Spacer(),
                                      KText(
                                        text: '${item.versionRelease}',
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
                                      KText(text: 'Version Preview Sdk Int'),
                                      Spacer(),
                                      KText(
                                        text: '${item.versionPreviewSdkInt}',
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
                                      KText(text: 'Version Incremental'),
                                      Spacer(),
                                      KText(
                                        text: '${item.versionIncremental}',
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
                                      KText(text: 'Version Codename'),
                                      Spacer(),
                                      KText(
                                        text: '${item.versionCodename}',
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
                                      KText(text: 'Version Base OS'),
                                      Spacer(),
                                      KText(
                                        text: '${item.versionBaseOS}',
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
                                      KText(text: 'Board'),
                                      Spacer(),
                                      KText(
                                        text: '${item.board}',
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
                                      KText(text: 'Bootloader'),
                                      Spacer(),
                                      KText(
                                        text: '${item.bootloader}',
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
                                      KText(text: 'Brand'),
                                      Spacer(),
                                      KText(
                                        text: '${item.brand}',
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
                                      KText(text: 'Device'),
                                      Spacer(),
                                      KText(
                                        text: '${item.device}',
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
                                      KText(text: 'Display'),
                                      Spacer(),
                                      KText(
                                        text: '${item.display}',
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
                                      KText(text: 'Fingerprint'),
                                      Spacer(),
                                      Expanded(
                                        flex: 6,
                                        child: KText(
                                          text: '${item.fingerprint}',
                                          bold: true,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          maxLines: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      KText(text: 'Hardware'),
                                      Spacer(),
                                      KText(
                                        text: '${item.hardware}',
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
                                      KText(text: 'Host'),
                                      Spacer(),
                                      KText(
                                        text: '${item.host}',
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
                                      KText(text: 'ID'),
                                      Spacer(),
                                      KText(
                                        text: '${item.id}',
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
                                      KText(text: 'Manufacturer'),
                                      Spacer(),
                                      KText(
                                        text: '${item.manufacturer}',
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
                                      KText(text: 'Model'),
                                      Spacer(),
                                      KText(
                                        text: '${item.model}',
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
                                      KText(text: 'Product'),
                                      Spacer(),
                                      KText(
                                        text: '${item.product}',
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
                                      KText(text: 'Supported (32) Bit Abis'),
                                      Spacer(),
                                      KText(
                                        text:
                                            '${item.supported32BitAbis!.length}',
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
                                      KText(text: 'Supported (64) Bit Abis'),
                                      Spacer(),
                                      KText(
                                        text:
                                            '${item.supported64BitAbis!.length}',
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
                                      KText(text: 'Supported Abis'),
                                      Spacer(),
                                      KText(
                                        text: '${item.supportedAbis!.length}',
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
                                      KText(text: 'Tags'),
                                      Spacer(),
                                      KText(
                                        text: '${item.tags}',
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
                                      KText(text: 'Type'),
                                      Spacer(),
                                      KText(
                                        text: '${item.type}',
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
                                      KText(text: 'Is Physical Device'),
                                      Spacer(),
                                      KText(
                                        text: '${item.isPhysicalDevice}',
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
                                      KText(text: 'System Features'),
                                      Spacer(),
                                      KText(
                                        text: '${item.systemFeatures!.length}',
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
                                      KText(text: 'Display Size Inches'),
                                      Spacer(),
                                      KText(
                                        text: '${item.displaySizeInches}',
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
                                      KText(text: 'Display Width Pixels'),
                                      Spacer(),
                                      KText(
                                        text: '${item.displayWidthPixels}',
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
                                      KText(text: 'Display Width Inches'),
                                      Spacer(),
                                      KText(
                                        text: '${item.displayWidthInches}',
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
                                      KText(text: 'Display HeightPixels'),
                                      Spacer(),
                                      KText(
                                        text: '${item.displayHeightPixels}',
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
                                      KText(text: 'Display Height Inches'),
                                      Spacer(),
                                      KText(
                                        text: '${item.displayHeightInches}',
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
                                      KText(text: 'Display XDpi'),
                                      Spacer(),
                                      KText(
                                        text: '${item.displayXDpi}',
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
                                      KText(text: 'Display YDpi'),
                                      Spacer(),
                                      KText(
                                        text: '${item.displayYDpi}',
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
            SizedBox(height: 10),
            if (userLocationTraceC.carrierInfo.value != null)
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 2,
                  child: Builder(builder: (context) {
                    final item = userLocationTraceC.carrierInfo.value;
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            maxLines: 3,
                            bold: true,
                            text: 'Carrier Info',
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
                                      KText(text: 'Carrier Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item!.carrierName}',
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
                                      KText(text: 'ISO Country Code'),
                                      Spacer(),
                                      KText(
                                        text: '${item.isoCountryCode}',
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
                                      KText(text: 'Mobile Country Code'),
                                      Spacer(),
                                      KText(
                                        text: '${item.mobileCountryCode}',
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
                                      KText(text: 'Mobile Network Operator'),
                                      Spacer(),
                                      KText(
                                        text: '${item.mobileNetworkOperator}',
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
                                      KText(text: 'Mobile Network Code'),
                                      Spacer(),
                                      KText(
                                        text: '${item.mobileNetworkCode}',
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
                                      KText(text: 'Allows VOIP'),
                                      Spacer(),
                                      KText(
                                        text: '${item.allowsVOIP}',
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
                                      KText(text: 'Radio Type'),
                                      Spacer(),
                                      KText(
                                        text: '${item.radioType}',
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
                                      KText(text: 'Network Generation'),
                                      Spacer(),
                                      KText(
                                        text: '${item.networkGeneration}',
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
                                      KText(text: 'Cid'),
                                      Spacer(),
                                      KText(
                                        text: '${item.cid}',
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
                                      KText(text: 'Lac'),
                                      Spacer(),
                                      KText(
                                        text: '${item.lac}',
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
            SizedBox(height: 10),
            if (userLocationTraceC.telephonyInfoModel.value != null)
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 2,
                  child: Builder(builder: (context) {
                    final item = userLocationTraceC.telephonyInfoModel.value;
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            maxLines: 3,
                            bold: true,
                            text: 'Telephony Info',
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
                                      KText(text: 'Network Type'),
                                      Spacer(),
                                      KText(
                                        text: '${item!.networkType}',
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
                                      KText(text: 'Network Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.networkName}',
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
                                      KText(text: 'Network Operator Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.networkOperatorName}',
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
                                      KText(text: 'Network Operator'),
                                      Spacer(),
                                      KText(
                                        text: '${item.networkOperator}',
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
                                      KText(text: 'Sim Operator'),
                                      Spacer(),
                                      KText(
                                        text: '${item.simOperator}',
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
                                      KText(text: 'Sim Operator Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.simOperatorName}',
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
                                      KText(text: 'Activity Type'),
                                      Spacer(),
                                      KText(
                                        text: '${item.activityType}',
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
                                      KText(text: 'Activity Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.activityName}',
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
                                      KText(text: 'Is Network Roaming'),
                                      Spacer(),
                                      KText(
                                        text: '${item.isNetworkRoaming}',
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
                                      KText(text: 'Is Sms Capable'),
                                      Spacer(),
                                      KText(
                                        text: '${item.isSmsCapable}',
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
                                      KText(text: 'Call State Type'),
                                      Spacer(),
                                      KText(
                                        text: '${item.callStateType}',
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
                                      KText(text: 'Call State Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.callStateName}',
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
                                      KText(text: 'Cellular Data State Type'),
                                      Spacer(),
                                      KText(
                                        text: '${item.cellularDataStateType}',
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
                                      KText(text: 'Cellular Data State Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.cellularDataStateName}',
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
                                      KText(text: 'Phone Type'),
                                      Spacer(),
                                      KText(
                                        text: '${item.phoneType}',
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
                                      KText(text: 'Phone Type Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.phoneTypeName}',
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
                                      KText(
                                          text:
                                              'Request Phone And Sms Permissions'),
                                      Spacer(),
                                      KText(
                                        text:
                                            '${item.requestPhoneAndSmsPermissions}',
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
                                      KText(text: 'Request Phone Permissions'),
                                      Spacer(),
                                      KText(
                                        text: '${item.requestPhonePermissions}',
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
                                      KText(text: 'Request Sms Permissions'),
                                      Spacer(),
                                      KText(
                                        text: '${item.requestSmsPermissions}',
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
                                      KText(text: 'Service State Type'),
                                      Spacer(),
                                      KText(
                                        text: '${item.serviceStateType}',
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
                                      KText(text: 'Service State Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.serviceStateName}',
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
                                      KText(text: 'Signal Strengths Length'),
                                      Spacer(),
                                      KText(
                                        text: '${item.signalStrengths!.length}',
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
                                      KText(text: 'Sim State Type'),
                                      Spacer(),
                                      KText(
                                        text: '${item.simStateType}',
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
                                      KText(text: 'Sim State Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.simStateName}',
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
            SizedBox(height: 10),
            if (userLocationTraceC.packageInfo.value != null)
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 2,
                  child: Builder(builder: (context) {
                    final item = userLocationTraceC.packageInfo.value;
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            maxLines: 3,
                            bold: true,
                            text: 'Package Info',
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
                                      KText(text: 'App Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item!.appName}',
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
                                      KText(text: 'Package Name'),
                                      Spacer(),
                                      KText(
                                        text: '${item.packageName}',
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
                                      KText(text: 'Version'),
                                      Spacer(),
                                      KText(
                                        text: '${item.version}',
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
                                      KText(text: 'Build Number'),
                                      Spacer(),
                                      KText(
                                        text: '${item.buildNumber}',
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
                                      KText(text: 'Build Signature'),
                                      Spacer(),
                                      Expanded(
                                        flex: 6,
                                        child: KText(
                                          text: '${item.buildSignature}',
                                          bold: true,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          maxLines: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      KText(text: 'Installer Store'),
                                      Spacer(),
                                      KText(
                                        text: '${item.installerStore}',
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
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
