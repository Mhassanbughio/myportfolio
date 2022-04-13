import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/adaptiveText.dart';
import 'package:portfolio/widget/customBtn.dart';
import 'package:portfolio/widget/customTextHeading.dart';
import 'package:portfolio/widget/toolsTechWidget.dart';

class AboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          CustomSectionSubHeading(text: "Get to know me :)"),
          SizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  '/Users/muhammadhassanbughio/Flutter-Animation-Portfolio-Full-Response-Web-App-Tab--main/assets/about.png',
                  height: height * 0.7,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "Who am I?",
                        style: TextStyle(
                            color: kPrimaryColor, fontSize: height * 0.025),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AdaptiveText(
                        "This is Muhammad Hassan, Flutter developer",
                        style: TextStyle(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.w400,
                          color: kTextColor,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "I'm a  have been developing mobile apps for over 2.5 years now. I have worked in teams for various startups and helped them in launching their prototypes and got valuable learning experience. ",
                        style: TextStyle(
                          fontSize: height * 0.02,
                          color: Colors.grey[500],
                          height: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: Colors.grey[800], width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Technologies I have worked with:",
                        style: TextStyle(
                            color: kPrimaryColor, fontSize: height * 0.018),
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < kTools.length; i++)
                            ToolTechWidget(
                              techName: kTools[i],
                            ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: Colors.grey[800], width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedCustomBtn(
                              onPressed: () {
                                launchURL(
                                    "https://drive.google.com/file/d/11jkl8mf5I4a84CssB8z22WXrGaFMTfd4/view?usp=sharing");
                              },
                              btnText: "Resume",
                            ),
                          ),
                          Container(
                            width: width * 0.05,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey[900], width: 2.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
