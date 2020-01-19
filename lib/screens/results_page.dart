import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//main() => runApp(ResultPage());

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Results"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Your Result",
                  style: mediumTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: ReusableCard(
                colour: KActiveCardColor,
                cardChild: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: greenTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: extraLargeTextStyle,
                      ),
                      Text(
                        interpretation.toUpperCase(),
                        style: bodyTextStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonText: "RE-CALCULATE",
              ),
            )
          ],
        ));
  }
}
