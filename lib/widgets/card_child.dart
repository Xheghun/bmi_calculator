import 'package:flutter/material.dart';

import '../constants.dart';

class CardChild extends StatelessWidget {
  final String label;
  final IconData iconData;

  CardChild({@required this.label, @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: KLabelTextStyle,
        ),
      ],
    );
  }
}
