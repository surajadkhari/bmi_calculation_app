import 'package:flutter/material.dart';

class mfContent extends StatelessWidget {
  const mfContent({Key? key, required this.genderIcon, required this.gender})
      : super(key: key);

  final IconData genderIcon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(gender)
      ],
    );
  }
}
