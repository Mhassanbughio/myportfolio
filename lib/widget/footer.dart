import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/adaptiveText.dart';


class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
             color: Color(0xff132744),

      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AdaptiveText(
              "Developed in 💙 with ",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: kTextColor,
              ),
            ),
            InkWell(
              onTap: () => launchURL("https://www.youtube.com/channel/UChayG2ZccAIX5BBvfR97wUg"),
              child: Text(
                "Flutter",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
