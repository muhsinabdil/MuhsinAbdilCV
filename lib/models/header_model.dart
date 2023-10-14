import 'package:flutter/material.dart';

class HeaderModel {
  String? text;
  VoidCallback? onPressed;
  IconData? icon;
  HeaderModel({
    required this.text,
    required this.onPressed,
    required this.icon,
  });
}
