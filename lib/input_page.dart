import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_child.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
final bottomContainerColor = Color(0xFFEB1555);
const fontColor = Color(0xFF8D8E98);

enum Gender { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.MALE;
                    });
                    print("Male Card was pressed");
                  },
                  cardChild: CardChild(
                    iconData: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                  colour: selectedGender == Gender.MALE
                      ? activeCardColor
                      : inactiveCardColor,
                )),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      print("Female Card was pressed");
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    colour: selectedGender == Gender.FEMALE
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: CardChild(
                        label: "FEMALE", iconData: FontAwesomeIcons.venus),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: activeCardColor,
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
