import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonText;

  BottomButton({this.onTap, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(
            buttonText,
            style: mediumTextStyle,
          ),
        ),
        color: KBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: KBottomContainerHeight,
      ),
    );
  }
}
