import 'package:flutter/material.dart';

import 'input-page.dart';
import 'results-page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
//      initialRoute: '/',
//      routes: {
//        '/': (context) => InputPage(),
//        '/results': (context) => ResultsPage(),
//      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
    );
  }
}
