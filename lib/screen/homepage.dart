import 'package:flutter/material.dart';

class BMICal extends StatefulWidget {
  const BMICal({Key? key}) : super(key: key);

  @override
  _BMICalState createState() => _BMICalState();
}

class _BMICalState extends State<BMICal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculatio"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ReuseableCard(
            colour: Color(0xFF1D1E33),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReuseableCard(
                colour: Color(0xFF1D1E33),
              )),
              Expanded(
                  child: ReuseableCard(
                colour: Color(0xFF1D1E33),
              ))
            ],
          ))
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  final Color colour;
  ReuseableCard({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
