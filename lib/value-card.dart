import 'package:flutter/material.dart';
import 'reusable-card.dart';
import 'constants.dart';

class ValueCard extends StatelessWidget {
  ValueCard(
      {@required this.weight,
      @required this.onIncrease,
      @required this.onDecrease});
  final int weight;
  final Function onIncrease;
  final Function onDecrease;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      color: kActiveCardColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('WEIGHT', style: kLabelTextStyle),
            Text(weight.toString(), style: kNumberTextStyle),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FloatingActionButton(
                  onPressed: () {
                    this.onIncrease();
                  },
                  child: Icon(Icons.add, size: 30, color: Color(0xffffffff)),
                  backgroundColor: Color(0xff0a0e21),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: FloatingActionButton(
                  onPressed: () {
                    this.onDecrease();
                  },
                  child: Icon(Icons.remove, size: 30, color: Color(0xffffffff)),
                  backgroundColor: Color(0xff0a0e21),
                ),
              ),
            ])
          ]),
    );
  }
}
