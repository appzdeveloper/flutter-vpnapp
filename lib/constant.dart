import 'package:flutter/material.dart';


const PRIVACY_TXT = "Free VPN does not collect personal information from you. \n\nWe do not keep logs of your online activites and never associate any domains or applications that you use with you, your device, IP address, or email.  \n\n For more information, please read our ";
const FONT_BOLD = "SkodaPro_Bold";
const FONT_COLOR1 = "#696969";
const Trial_txt = "By starting a 7-day free trial, you agree to the";
const ConnectImage = "assets/imgs/img2.png";
const DisConnectImage = "assets/imgs/img1.png";
const USFlag = "assets/imgs/flag.png";
const NetImg = "assets/imgs/net.png";

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}



