import 'package:bmi_app/screen/const.dart';
import 'package:flutter/material.dart';


class BottomButton extends StatelessWidget {
  final Function()? ontap;
  final String buttonTitle;
  BottomButton({required this.ontap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: kBottomContainerColour,
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomTextStyle,
          ),
        ),
      ),
    );
  }
}