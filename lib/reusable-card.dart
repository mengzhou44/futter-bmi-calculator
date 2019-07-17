import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, @required this.child, this.onPress});
  final Color color;
  final Widget child;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (this.onPress != null) {
            this.onPress();
          }
        },
        child: Container(
          child: child,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
        ));
  }
}
