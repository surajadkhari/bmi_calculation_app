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
    );
  }
}
