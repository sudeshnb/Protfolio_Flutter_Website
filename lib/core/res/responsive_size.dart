import 'package:flutter/material.dart';

double isFontSize(BuildContext context, double val) {
  double width = MediaQuery.of(context).size.width;
  if (width >= 1024) {
    return val;
  } else if (width < 1024 && width >= 600) {
    return val;
  } else {
    return val;
  }
}
