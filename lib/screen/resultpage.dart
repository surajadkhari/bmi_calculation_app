import 'package:bmi_app/component/bottom_button.dart';
import 'package:bmi_app/component/reuseable_card.dart';
import 'package:bmi_app/screen/const.dart';

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
                    "Normal",
                    style: kResultTextStlye,
                  ),
                  Text(
                    "26",
                    style: kBMITextvalueStlye,
                  ),
                  Text(
                    "BMI Value is low , eat more",
                    style: kBMIvaluedescriptiovalueStlye,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "RE -CALCULATE",
            ontap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
