import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon-content.dart';
import 'reusable-card.dart';
import 'value-card.dart';
import 'bottom-button.dart';
import 'results-page.dart';

enum Gender { Male, Female, Unknown }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.Unknown;
  int height = 180;
  int age = 35;
  int weight = 60;

  Color getCardColor(Gender gender) {
    return gender == selectedGender ? kActiveCardColor : kInactiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableCard(
                    color: getCardColor(Gender.Male),
                    child: IconContent(
                        iconData: FontAwesomeIcons.mars, iconText: "MALE"),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    }),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.Female;
                    });
                  },
                  color: getCardColor(Gender.Female),
                  child: IconContent(
                      iconData: FontAwesomeIcons.venus, iconText: "FEMALE"),
                ),
              ),
            ]),
          ),
          Expanded(
              child: ReusableCard(
                  color: kActiveCardColor,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("HEIGHT", style: kLabelTextStyle),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(height.toString(), style: kNumberTextStyle),
                              Text("cm", style: kLabelTextStyle),
                            ]),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Color(0xffeb1555),
                            inactiveTrackColor: Color(0xff8d8e98),
                            thumbColor: Color(0xffEE1B55),
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: 120,
                              max: 220,
                              onChanged: (value) {
                                setState(() {
                                  height = value.round();
                                });
                              }),
                        ),
                      ]))),
          Expanded(
              child: Row(children: <Widget>[
            Expanded(
                child: ValueCard(
              weight: weight,
              onIncrease: () {
                setState(() {
                  weight++;
                });
              },
              onDecrease: () {
                setState(() {
                  weight--;
                });
              },
            )),
            Expanded(child: ReusableCard(color: kActiveCardColor)),
          ])),
          BottomButton(
            buttonText: 'Calculate',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultsPage();
              }));
            },
          )
        ]));
  }
}
