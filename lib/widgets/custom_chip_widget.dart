import 'package:flutter/material.dart';

import '../constants/color_const.dart';
import '../constants/metric_const.dart';

class CustomChipWidget extends StatelessWidget {
  String text;
  CustomChipWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Chip(
          labelPadding: EdgeInsets.only(left: 13, right: 13.0),
          label: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          side: BorderSide(
            color: Colors.purple,
          ),
          backgroundColor: kBackgroundColor,
          elevation: 6.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kMaxRadius),
            ),
          )),
    );
  }
}
