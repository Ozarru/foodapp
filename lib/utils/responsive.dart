import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 920;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 920 &&
      MediaQuery.of(context).size.width < 1500;

  static bool isWideDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1500;
  static bool is4kDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 2440;
}
