import 'package:bmi_app/component/bottom_button.dart';
import 'package:bmi_app/component/icon_contain.dart';
import 'package:bmi_app/component/reuseable_card.dart';
import 'package:bmi_app/screen/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../component/round_icon_button.dart';

enum Gender { male, female }

class BMICal extends StatefulWidget {
  const BMICal({Key? key}) : super(key: key);

  @override
  _BMICalState createState() => _BMICalState();
}

class _BMICalState extends State<BMICal> {
  Color maleCardColur = kInactiveCardcolour;
  Color femaleCardColur = kInactiveCardcolour;

  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 25;

  // void updateColour(Gender selectedgender) {
  //   if (selectedgender == Gender.male) {
  //     if (maleCardColur == inactiveCardcolour) {
  //       maleCardColur = activeCardcolour;
  //       femaleCardColur = inactiveCardcolour;
  //     } else {
  //       maleCardColur = inactiveCardcolour;
  //     }
  //   }
  //   if (selectedgender == Gender.female) {
  //     if (femaleCardColur == inactiveCardcolour) {
  //       femaleCardColur = activeCardcolour;
  //       maleCardColur = inactiveCardcolour;
  //     } else {
  //       femaleCardColur = inactiveCardcolour;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculatar"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardcolour
                        : kInactiveCardcolour,
                    cardChild: IconContain(
                      icon: FontAwesomeIcons.mars,
                      gender: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardcolour
                        : kInactiveCardcolour,
                    cardChild: IconContain(
                      icon: FontAwesomeIcons.venus,
                      gender: "FEMALE",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ReuseableCard(
            colour: kActiveCardcolour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kLableNumberStyle,
                    ),
                    Text(
                      "cm",
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      overlayColor: Color(0x29EB1555),
                      thumbColor: Color(0xFFEB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReuseableCard(
                  colour: kActiveCardcolour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kLableNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundButtonIcon(
                            icon: FontAwesomeIcons.plus,
                            onpressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundButtonIcon(
                            icon: FontAwesomeIcons.minus,
                            onpressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReuseableCard(
                  colour: kActiveCardcolour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: kLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kLableNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundButtonIcon(
                            icon: FontAwesomeIcons.plus,
                            onpressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundButtonIcon(
                            icon: FontAwesomeIcons.minus,
                            onpressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          BottomButton(
            ontap: () {
              Navigator.pushNamed(context, "/resultpage");
            },
            buttonTitle: "Calculate",
          ),
        ],
      ),
    );
  }
}
