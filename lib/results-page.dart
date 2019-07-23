import 'package:flutter/material.dart';

//const kResultsTextStyle = TextStyle(color: Color(0xffffffff), fontSize: 30);

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CACLCULATOR'),
        backgroundColor: Color(0xfffddfe3),
      ),
//      body: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            Expanded(
//              child: Container(
//                child: Text('Your Results', style: kResultsTextStyle),
//              ),
//            )
//          ]),
    );
  }
}
