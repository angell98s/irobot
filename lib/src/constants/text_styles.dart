import 'package:flutter/material.dart';
import 'package:irobot/src/constants/breakpoints.dart';

class AppTextStyles {
  static TextStyle h1(BuildContext context) => TextStyle(
        fontSize:
            MediaQuery.of(context).size.width > Breakpoint.desktop ? 70 : 45,
      );

  static TextStyle h2(BuildContext context) => TextStyle(
        fontSize:
            MediaQuery.of(context).size.width > Breakpoint.desktop ? 40 : 20,
      );

  static TextStyle h3(BuildContext context) => TextStyle(
        fontSize:
            MediaQuery.of(context).size.width > Breakpoint.desktop ? 32 : 18,
      );

  static const TextStyle h4 = TextStyle(
    fontSize: 25,
  );

  static const TextStyle h5 = TextStyle(
    fontSize: 20,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
  );

  static const TextStyle bodySm = TextStyle(
    fontSize: 14,
  );

  static const TextStyle bodyLg = TextStyle(
    fontSize: 18,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 10,
  );
}
