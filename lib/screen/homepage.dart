import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_contain.dart';
import 'reuseable_card.dart';

const bottomContainerHeight = 80.00;
const bottomContainerColour = Color(0xFFEB1555);
const activeCardcolour = Color(0xFF1D1E33);
const inactiveCardcolour = Color(0xFF111328);

enum Gender { male, female }

class BMICal extends StatefulWidget {
  const BMICal({Key? key}) : super(key: key);

  @override
  _BMICalState createState() => _BMICalState();
}

class _BMICalState extends State<BMICal> {
  Color maleCardColur = inactiveCardcolour;
  Color femaleCardColur = inactiveCardcolour;

  void updateColour(Gender selectedgender) {
    if (selectedgender == Gender.male) {
      if (maleCardColur == inactiveCardcolour) {
        maleCardColur = activeCardcolour;
        femaleCardColur = inactiveCardcolour;
      } else {
        maleCardColur = inactiveCardcolour;
      }
    }
    if (selectedgender == Gender.female) {
      if (femaleCardColur == inactiveCardcolour) {
        femaleCardColur = activeCardcolour;
        maleCardColur = inactiveCardcolour;
      } else {
        femaleCardColur = inactiveCardcolour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculatar"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.male);
                      });
                    },
                    child: ReuseableCard(
                      colour: maleCardColur,
                      cardChild: IconContain(
                        icon: FontAwesomeIcons.mars,
                        gender: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    child: ReuseableCard(
                      colour: femaleCardColur,
                      cardChild: IconContain(
                        icon: FontAwesomeIcons.venus,
                        gender: "FEMALE",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ReuseableCard(
            colour: activeCardcolour,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReuseableCard(
                  colour: activeCardcolour,
                )),
                Expanded(
                    child: ReuseableCard(
                  colour: activeCardcolour,
                ))
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
