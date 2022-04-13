import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/customTextHeading.dart';
import 'package:portfolio/widget/projectCard.dart';

class ContactMobileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          CustomSectionHeading(text: "\nGet in Touch"),
          CustomSectionSubHeading(
              text: "Let's build something together :)\n\n"),
          Container(
            height: height * 0.3,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int i) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                child: ProjectCard(
                  cardHeight: height * 0.3,
                  cardWidth: width > 480 ? width * 0.5 : width * 0.8,
                  projectIconData: kContactIcons[i],
                  projectTitle: kContactTitles[i],
                  projectDescription: kContactDetails[i],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
