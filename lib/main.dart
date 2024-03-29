import 'package:flutter/material.dart';

import 'screen/homepage.dart';
import 'screen/resultpage.dart';

void main() {
  runApp(homepage());
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      // routes: {
      //   // "/": (context) => homepage(),
      //   "/resultpage": (context) => ResultPage()
      // },
      debugShowCheckedModeBanner: false,
      home: BMICal(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
      ),
    );
  }
}
