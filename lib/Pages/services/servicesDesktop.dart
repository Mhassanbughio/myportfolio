import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animations/bottomAnimation.dart';
import 'package:portfolio/widget/adaptiveText.dart';
import 'package:portfolio/widget/customBtn.dart';
import 'package:portfolio/widget/customTextHeading.dart';
import 'package:portfolio/widget/serviceCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';

class ServiceDesktop extends StatefulWidget {
  @override
  _ServiceDesktopState createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nWhat I Do"),
          CustomSectionSubHeading(
              text: "I may not be perfect, but I'm surely of some help :)\n\n"),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: WidgetAnimator(
                      child: ServiceCard(
                        cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                        cardHeight:
                            width < 1200 ? height * 0.37 : height * 0.35,
                        serviceIcon: kServicesIcons[index],
                        serviceTitle: kServicesTitles[index],
                        serviceDescription: kServicesDescriptions[index],
                        cardBack: ServiceCardBackWidget(
                            serviceTitle: kServicesTitles[index],
                            serviceDesc: kServicesDescriptions[index],
                            height: height,
                            width: width),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int index = 3; index < kServicesIcons.length; index++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: WidgetAnimator(
                        child: ServiceCard(
                          cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                          cardHeight:
                              width < 1200 ? height * 0.37 : height * 0.35,
                          serviceIcon: kServicesIcons[index],
                          serviceTitle: kServicesTitles[index],
                          serviceDescription: kServicesDescriptions[index],
                          cardBack: ServiceCardBackWidget(
                            serviceDesc: kServicesDescriptions[index],
                            serviceTitle: kServicesTitles[index],
                            height: height,
                            width: width,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ServiceCardBackWidget extends StatelessWidget {
  const ServiceCardBackWidget(
      {Key key,
      @required this.height,
      @required this.width,
      this.serviceDesc,
      this.serviceTitle});

  final double height;
  final double width;
  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AdaptiveText(
          serviceDesc,
          style: TextStyle(
            color: kTextColor,
            fontSize: height * 0.015,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w400,
            height: width < 900 ? 1.5 : 1.8,
          ),
        ),
        const SizedBox(height: 25.0),
        MaterialButton(
          hoverColor: kPrimaryColor.withAlpha(150),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(color: kPrimaryColor)),
          onPressed: () {},
          child: Text(
            "Details",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          width: 250.0,
          height: 0.5,
          color: Colors.grey[100],
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 40.0,
          width: 150.0,
          child: MaterialButton(
            color: kPrimaryColor,
            onPressed: () => showDialog(
                context: context,
                builder: (contecxt) => AlertDialog(
                      backgroundColor: Color(0xff132744),
                      title: AdaptiveText(
                        "Hire Me!",
                        style: TextStyle(fontSize: 32.0, color: kTextColor),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Back"))
                      ],
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFilledBtn(
                            height: 40.0,
                            onPressed: () => launchURL(
                                "https://www.linkedin.com/in/muhammad-hassan-%F0%9F%87%B5%F0%9F%87%B0-416650189/"),
                            btnColor: kPrimaryColor,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(FontAwesomeIcons.whatsapp,
                                    color: Colors.white),
                                const SizedBox(width: 8.0),
                                Text(
                                  "WhatsApp",
                                  style: TextStyle(color: kTextColor),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          CustomFilledBtn(
                            height: 40.0,
                            onPressed: () => launchURL(
                                "https://www.upwork.com/freelancers/~0131a41fb93c99929b"),
                            btnColor: kPrimaryColor,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.network(
                                  "https://img.icons8.com/ios-filled/50/000000/upwork.png",
                                  height: 35.0,
                                  color: kTextColor,
                                ),
                                const SizedBox(width: 8.0),
                                Text(
                                  "Upwork",
                                  style: TextStyle(color: kTextColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
            child: Text(
              "HIRE ME!",
              style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          ),
        )
      ],
    );
  }
}
