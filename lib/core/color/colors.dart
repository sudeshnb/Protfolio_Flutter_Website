import 'package:flutter/material.dart';

const primaryColor = Color(0xFF09FBD3);
const secondaryColor = Color(0xFFFE53BB);

const textColor = Color(0xFF2B2B2B);
const lightgrayColor = Color(0x44948282);
const whiteColor = Color(0xFFFFFFFF);
const blackColor = Color(0xFF2B2B2B);
// Color kCyanColor = const Color(0xFF08F7FE);
// const btnColor = Color(0xFF4E5E80);
// const defaultPadding = 200.0;
// const defaultDuration = Duration(seconds: 1); // we use it on our animation
// const maxWidth = 1440.0; // max width of our web

Color lightBackgroundColor = const Color(0xFFFFFFFF);
// Color lightPrimaryColor = const Color(0xffFFDDBF);
Color lightTextColor = const Color(0xFF403930);
// Color lightDividerColor = const Color(0x44948282);
// Color lightOutLineBtnColor = const Color(0xFF4D5566);

//
Color darkBackgroundColor = const Color(0xFF2B2B2B);
// Color darkPrimaryColor = const Color(0xFFFFDDBF);
Color darkTextColor = const Color(0xFFF3F2FF);
// Color darkDividerColor = const Color(0x441C2A3D);
// Color darkOutLineBtnColor = const Color(0xFFF3F2FF);

const pinkpurple = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0XFFaa367c), Color(0XFF4a2fbd)],
);

const grayBack = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0XFF2E2D36), Color(0XFF11101D)],
);
const grayWhite = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFFFFF), Color(0xFFF3F2FF)],
);

const buttonGradi = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0XFF7DE7EB), Color(0XFF33BBCF)],
);

const contactGradi = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0XFF2E2D36), Color(0XFF11101D)],
);

//
BoxShadow primaryColorShadow = BoxShadow(
  color: primaryColor.withAlpha(100),
  blurRadius: 12.0,
  offset: const Offset(0.0, 0.0),
);
BoxShadow blackColorShadow = BoxShadow(
  color: Colors.black.withAlpha(100),
  blurRadius: 12.0,
  offset: const Offset(0.0, 0.0),
);
