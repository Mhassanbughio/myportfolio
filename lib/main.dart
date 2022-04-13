import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/pages/mainSection.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

//
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Container(
            decoration: BoxDecoration(
              color: Color(0xff132744),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "/Users/muhammadhassanbughio/Flutter-Animation-Portfolio-Full-Response-Web-App-Tab--main/assets/tempImg.jpg",
                  height: 300,
                ),
                SizedBox(
                  width: 20,
                ),
                TyperAnimatedTextKit(
                    isRepeatingAnimation: true,
                    speed: Duration(milliseconds: 50),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: kTextColor,
                    ),
                    text: [
                      " Muhammad Hassan",
                      " Flutter Developer",
                    ]),
              ],
            ),
          ),
          nextScreen: MainPage(),
          splashTransition: SplashTransition.sizeTransition,
          backgroundColor: k2PrimaryColor,
          // pageTransitionType: PageTransitionType.scale,
        ));
  }
}
