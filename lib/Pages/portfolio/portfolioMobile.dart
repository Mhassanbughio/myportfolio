import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/customBtn.dart';
import 'package:portfolio/widget/customTextHeading.dart';
import 'package:portfolio/widget/projectCard.dart';

class PortfolioMobileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          CustomSectionHeading(text: "\nPortfolio"),
          CustomSectionSubHeading(
              text: "Here are few samples of my previous work :)\n\n"),
          Container(
            height: height * 0.4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int i) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                child: ProjectCard(
                  cardHeight: height * 0.4,
                  cardWidth: width < 650 ? width * 0.8 : width * 0.4,
                  projectTitle: kProjectsTitles[i],
                  projectDescription: kProjectsDescriptions[i],
                  projectLink: kProjectsLinks[i],
                  backImage: kProjectsBanner[i],
                  projectIcon: "",
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          OutlinedCustomBtn(
              btnText: "See More",
              onPressed: () {
                launchURL(
                    "https://www.youtube.com/channel/UCbl_sOtO4PSD-HnZ8Y_q5kQ/videos");
              })
        ],
      ),
    );
  }
}
