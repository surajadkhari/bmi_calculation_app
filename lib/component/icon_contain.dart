import 'package:bmi_app/screen/const.dart';
import 'package:flutter/material.dart';

class IconContain extends StatelessWidget {
  final IconData icon;
  final String? gender;
  IconContain({required this.icon, this.gender});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        Text(gender!, style: kLabelTextStyle)
      ],
    );
  }
}
