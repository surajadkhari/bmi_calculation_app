import 'package:bmi_app/component/bottom_button.dart';
import 'package:bmi_app/component/reuseable_card.dart';
import 'package:bmi_app/screen/const.dart';

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiFeedback,
      required this.bmiResult,
      required this.bmiValue});

  final String bmiValue;
  final String bmiResult;
  final String bmiFeedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculartor "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              child: Text(
                " RESULT ",
                style: kBottomTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardcolour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    // "hi",
                    style: kResultTextStlye,
                  ),
                  Text(
                    bmiValue,
                    style: kBMITextvalueStlye,
                  ),
                  Text(
                    // "hi",
                    bmiFeedback,
                    textAlign: TextAlign.center,
                    style: kBMIvaluedescriptiovalueStlye,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "RE-CALCULATE",
            ontap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
