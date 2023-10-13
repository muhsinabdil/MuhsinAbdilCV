import 'package:flutter/material.dart';

class ScreenSize {
  BuildContext context;
  ScreenSize({
    required this.context,
  });

  Size size() {
    return MediaQuery.of(context).size;
  }
}
