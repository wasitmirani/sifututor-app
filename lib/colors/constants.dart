import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const icon_color = const Color(0xFF697bfd);
const icon_secondary = const Color(0xFFcbcbcb);

const kPrimaryColor = 0xff44b449;
const kShadowColor = 0xffA8A8A8;
const kBlackColor = 0xff181725;
const kSubtitleColor = 0xff7C7C7C;
const kSecondaryColor = 0xffF2F3F2;
const kBorderColor = 0xffE2E2E2;

const primary = Color(0xFF697bfd);
const white = Color(0xFFFFFFFF);
const black = Color(0xFF000000);
const grey = Color(0xFFF6F6F6);

final TextStyle TitleStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: Color(kBlackColor),
);

final TextStyle DescriptionStyle = TextStyle(
  color: Color(kSubtitleColor),
  fontSize: 13,
);

// Text Style
const HeadingTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
);
const SubHeadingTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
);

String getMonth() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('MMMM').format(now);
  //2022-04-10 20:48:56.354 and Sunday

  return formattedDate.toString();
}
