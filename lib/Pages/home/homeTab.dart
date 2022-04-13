import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/socialMediaIcon.dart';

class HomeTab extends StatelessWidget {
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
            bottom: width < 740 ? height * 0.1 : height * 0.15,
            right: width < 740 ? -width * 0.2 : -width * 0.1,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                  '/Users/muhammadhassanbughio/Flutter-Animation-Portfolio-Full-Response-Web-App-Tab--main/assets/hasssan-222.png',
                  height: height * 0.75),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Glad to see you here ",
                      style: TextStyle(
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      "assets/hi.gif",
                      height: height * 0.05,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "Muhammad Hassan",
                  style: TextStyle(
                      fontSize: height * 0.07,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      letterSpacing: 1.5),
                ),
                Text(
                  "Advocate Developer",
                  style: TextStyle(
                    fontSize: height * 0.07,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
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
                SizedBox(
                  height: height * 0.045,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.035,
                        horizontalPadding: width * 0.01,
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
