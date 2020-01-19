import 'package:flutter/material.dart';

//constant name should start with 'K'

const KFontColor = Color(0xFF8D8E98);
const KBottomContainerHeight = 80.0;
const KActiveCardColor = Color(0xFF1D1E33);
const KInactiveCardColor = Color(0xFF111328);
const KFabBackgroundColor = Color(0xFF4C4F5E);
const KBottomContainerColor = Color(0xFFEB1555);
const KGreenColor = Color(0xFF24D876);

const KLabelTextStyle = TextStyle(fontSize: 18, color: KFontColor);

final bodyTextStyle =
extraLargeTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w500);
final extraLargeTextStyle = KLabelTextStyle.copyWith(
    fontSize: 100, fontWeight: FontWeight.w900, color: Colors.white);
final largeTextStyle = extraLargeTextStyle.copyWith(fontSize: 50);
final mediumTextStyle = extraLargeTextStyle.copyWith(fontSize: 25.0);
final greenTextStyle =
extraLargeTextStyle.copyWith(color: KGreenColor, fontSize: 18);
