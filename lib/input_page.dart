import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_child.dart';
import 'constants.dart';

enum Gender { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 40;
  int age = 19;

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
                      ? KActiveCardColor
                      : KInactiveCardColor,
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
                        ? KActiveCardColor
                        : KInactiveCardColor,
                    cardChild: CardChild(
                        label: "FEMALE", iconData: FontAwesomeIcons.venus),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
                colour: KActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: KLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: KLargeTextStyle,
                        ),
                        Text(
                          "cm",
                          style: KLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x15EB1555),
                          thumbColor: KBottomContainerColor,
                          thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15),
                          overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        inactiveColor: KFontColor,
                        onChanged: (double newValue) {
                          print(newValue);
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: KActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: KLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: KLargeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              function: () {
                                setState(() {
                                  if (weight < 400) {
                                    weight++;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              function: () {
                                setState(() {
                                  if (weight > 20) {
                                    weight--;
                                  }
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: KActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: KLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: KLargeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              function: () {
                                setState(() {
                                  if (age < 200) {
                                    age++;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              function: () {
                                setState(() {
                                  if (age > 1) {
                                    age--;
                                  }
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: KBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: KBottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function function;

  RoundIconButton({@required this.icon, @required this.function});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 8,
      onPressed: function,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      fillColor: KFabBackgroundColor,
    );
  }
}
