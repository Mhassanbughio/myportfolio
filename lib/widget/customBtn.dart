import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class OutlinedCustomBtn extends StatelessWidget {
  final String btnText;
  final Function onPressed;

  const OutlinedCustomBtn(
      {Key key, @required this.btnText, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      hoverColor: kPrimaryColor.withAlpha(150),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: kPrimaryColor)),
      onPressed: onPressed,
      child: Text(
        btnText,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color:  Colors.white,
        ),
      ),
    );
  }
}

class CustomFilledBtn extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final Function onPressed;
  final Color btnColor;
  const CustomFilledBtn(
      {Key key,
      this.height,
      this.btnColor,
      this.width = 200.0,
      this.onPressed,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        color: btnColor,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
