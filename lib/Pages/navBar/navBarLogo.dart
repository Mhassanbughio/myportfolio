import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class NavBarLogo extends StatelessWidget {
  final double height;
  NavBarLogo({this.height});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 20.0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "< ",
            style: TextStyle(
              fontSize: height ?? 20,
              color: Colors.white,
            ),
          ),
          Text(
            "Hassan",
            style: TextStyle(
              fontFamily: "Agustina",
              fontSize: height ?? 20,
              color: kTextColor,
            ),
          ),
          Text(
            MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
            style: TextStyle(
              fontSize: height ?? 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
