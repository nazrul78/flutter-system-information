// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  TextOverflow textOverflow;
  final int? maxLines;
  final bool? bold;
  final FontWeight? fontWeight;

  KText({
    required this.text,
    this.color,
    this.bold = false,
    this.fontSize,
    this.maxLines,
    this.fontWeight = FontWeight.normal,
    this.textOverflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      textScaleFactor: 1.0,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: fontSize != null ? fontSize! : 13,
        fontFamily: bold! ? 'Manrope Bold' : 'Manrope Regular',
        color: color != null ? color : Colors.black87,
        fontWeight: fontWeight,
      ),
      maxLines: maxLines,
      overflow: textOverflow,
    );
  }
}
