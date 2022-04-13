import 'package:portfolio/widget/customBtn.dart';
import 'package:portfolio/widget/customTextHeading.dart';

import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/toolsTechWidget.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          CustomSectionSubHeading(text: "Get to know me :)"),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 70,
            backgroundColor: kPrimaryColor,
            child: CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage(
                '/Users/muhammadhassanbughio/Flutter-Animation-Portfolio-Full-Response-Web-App-Tab--main/assets/about.png',
                // height: height * 0.27,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: height * 0.025,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.028,
          ),
          Text(
            "This is Muhammad Hassan, Flutter developer",
            style: TextStyle(
              fontSize: height * 0.022,
              fontWeight: FontWeight.w400,
              color: kTextColor,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "I'm a  have been developing mobile apps for over 2.5 years now. I have worked in teams for various startups and helped them in launching their prototypes and got valuable learning experience.  ",
            style: TextStyle(
              fontSize: height * 0.018,
              color: Colors.grey[500],
              height: 1.5,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900], width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Technologies I have worked with:",
              style: TextStyle(color: kPrimaryColor, fontSize: height * 0.015),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          Row(
            children: [
              for (int i = 4; i < 4; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900], width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedCustomBtn(
                      btnText: "Resume",
                      onPressed: () {
                        launchURL(
                            "https://drive.google.com/file/d/11jkl8mf5I4a84CssB8z22WXrGaFMTfd4/view?usp=sharing");
                      }),
                ),
                Container(
                  width: width * 0.2,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey[900], width: 2.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
