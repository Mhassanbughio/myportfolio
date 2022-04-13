import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animations/bottomAnimation.dart';
import 'package:portfolio/animations/entranceFader.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/adaptiveText.dart';
import 'package:portfolio/widget/socialMediaIcon.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height - 50,
      width: width,
      // color: k2PrimaryColor,
      child: Stack(
        children: [
          Positioned(
            top: width < 1200 ? height * 0.15 : height * 0.1,
            right: width * 0.01,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: Image.asset(
                  '/Users/muhammadhassanbughio/Flutter-Animation-Portfolio-Full-Response-Web-App-Tab--main/assets/hasssan-222.png',
                  height: width < 1200 ? height * 0.8 : height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(width * 0.1, height * 0.2, width * 0.1, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AdaptiveText(
                      "Glad to see you here! ",
                      style: TextStyle(
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w300,
                        color: kTextColor,
                      ),
                    ),
                    EntranceFader(
                      offset: Offset(0, 0),
                      delay: Duration(seconds: 2),
                      duration: Duration(milliseconds: 800),
                      child: Image.asset(
                        "assets/hi.gif",
                        height: height * 0.05,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                AdaptiveText(
                  "Muhammad Hassan",
                  style: TextStyle(
                      fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                      fontWeight: FontWeight.w100,
                      color: kTextColor,
                      letterSpacing: 4.0),
                ),
                AdaptiveText(
                  "Advocate Developer",
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: width < 800 ? height * 0.085 : height * 0.095,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 5.0),
                ),
                EntranceFader(
                  offset: Offset(-10, 0),
                  delay: Duration(seconds: 1),
                  duration: Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: kPrimaryColor,
                      ),
                      TyperAnimatedTextKit(
                          isRepeatingAnimation: true,
                          speed: Duration(milliseconds: 50),
                          textStyle: TextStyle(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200,
                            color: kTextColor,
                          ),
                          text: [
                            " Flutter Developer",
                            "Public Speaker",
                            "Tech Evangelist",
                            " Technical Writer",
                            " UI/UX Enthusiast"
                          ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    kSocialIcons.length,
                    (index) => WidgetAnimator(
                      child: SocialMediaIconBtn(
                        icon: kSocialIcons[index],
                        socialLink: kSocialLinks[index],
                        height: height * 0.035,
                        horizontalPadding: width * 0.005,
                      ),
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
