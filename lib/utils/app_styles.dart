import 'package:flutter/material.dart';

class ColorManager {
  static Color primaryColor = HexColor.fromHex("#e9f0eb");
  static Color textColor = HexColor.fromHex("#010029");
  static Color white = HexColor.fromHex("#ffffff");
  static Color black1 = HexColor.fromHex("#706e6e");
  static Color black = HexColor.fromHex("##050505");
  static Color black2 = HexColor.fromHex("#a4b0bd");
  static Color green = HexColor.fromHex("#03570c");
  static Color tab = HexColor.fromHex("#cfe0e6");
  static Color blue1 = HexColor.fromHex("#01175e");
  static Color purple = HexColor.fromHex("#400652");
  static Color red1 = HexColor.fromHex("#660204");
}

class TextStyles {
  static TextStyle textStyle = TextStyle(
      fontSize: 16, color: ColorManager.textColor, fontWeight: FontWeight.w500);
  static TextStyle headline1 = TextStyle(
      fontSize: 26, color: ColorManager.textColor, fontWeight: FontWeight.bold);
  static TextStyle headline2 = TextStyle(
      fontSize: 21, color: ColorManager.textColor, fontWeight: FontWeight.bold);
  static TextStyle headline3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headline4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
