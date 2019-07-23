import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText, @required this.onTap});

  final String buttonText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          child: Center(child: Text(buttonText, style: kBigTextStyle)),
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(bottom: 10),
          width: double.infinity,
          color: kBottomContainerColor,
          height: kBottomContainerHeight),
    );
  }
}
