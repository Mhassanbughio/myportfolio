import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/socialMediaIcon.dart';

class HomeMobile extends StatefulWidget {
  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      color: k2PrimaryColor,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -width * 0.25,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                  '/Users/muhammadhassanbughio/Flutter-Animation-Portfolio-Full-Response-Web-App-Tab--main/assets/hasssan-222.png',
                  height: height * 0.65),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HEY THERE! ",
                      style: TextStyle(
                          fontSize: height * 0.025,
                          color: kTextColor,
                          fontWeight: FontWeight.w200),
                    ),
                    Image.asset(
                      "assets/hi.gif",
                      height: height * 0.03,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "Muhammad Hassan",
                  style: TextStyle(
                      fontSize: height * 0.055,
                      color: kTextColor,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.1),
                ),
                Text(
                  "Advocate Developer",
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: height * 0.055,
                      fontWeight: FontWeight.w500),
                ),
                Row(
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
                            color: kTextColor,
                            fontWeight: FontWeight.w200),
                        text: [
                          " Flutter Developer",
                          "Public Speaker",
                          "Tech Evangelist",
                          " Technical Writer",
                          " UI/UX Enthusiast"
                        ]),
                  ],
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.03,
                        horizontalPadding: 2.0,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
