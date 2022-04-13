import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/pages/services/servicesDesktop.dart';
import 'package:portfolio/widget/customTextHeading.dart';
import 'package:portfolio/widget/serviceCard.dart';

class ServiceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          CustomSectionHeading(text: "\nWhat I Do"),
          CustomSectionSubHeading(
              text: "I may not be perfect, but I'm surely of some help :)\n\n"),
          Container(
            height: width < 450 ? height * 0.4 : height * 0.4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int i) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                child: ServiceCard(
                  cardHeight: width < 450 ? height * 0.4 : height * 0.4,
                  cardWidth: width < 650 ? width * 0.8 : width * 0.5,
                  serviceIcon: kServicesIcons[i],
                  serviceTitle: kServicesTitles[i],
                  serviceDescription: kServicesDescriptions[i],
                  cardBack: ServiceCardBackWidget(
                    serviceTitle: kServicesTitles[i],
                    serviceDesc: kServicesDescriptions[i],
                    height: height,
                    width: width,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
