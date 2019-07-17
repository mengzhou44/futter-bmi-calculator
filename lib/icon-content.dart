import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.iconData, @required this.iconText});

  final IconData iconData;
  final String iconText;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(iconData, size: 80),
          SizedBox(height: 15),
          Text(iconText, style: kLabelTextStyle)
        ]);
  }
}
