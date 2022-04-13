import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/adaptiveText.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveText(
      text,
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.height * 0.075,
        fontWeight: FontWeight.w100,
        letterSpacing: 1.0,
        color: kTextColor,
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key key, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveText(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w200,
        color: kTextColor,
      ),
    );
  }
}
