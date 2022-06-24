import 'package:flutter/material.dart';
import 'package:otto_portfolio/constants.dart';
import 'package:otto_portfolio/widgets/custom_button.dart';
import 'package:otto_portfolio/widgets/custom_text_heading.dart';
import 'package:otto_portfolio/widgets/project_card.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  ScrollController scrollController = ScrollController();
  double scrollValue = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nProjects"),
          SizedBox(height: 0.05 * height),
          Container(
            height: height * 0.5,
            width: width * 0.9,
            margin: EdgeInsets.fromLTRB(0.01 * width, 0, 0.01 * width, 0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.all(
                    width * 0.02,
                  ),
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.32 : height * 0.32,
                    projectIcon: kProjectsIcons[index],
                    projectTitle: kProjectsTitles[index],
                    projectDescription: kProjectsDescriptions[index],
                    projectLink: kProjectsLinks[index],
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: width > 1200 ? height * 0.45 : width * 0.21,
          //   child: ListView.separated(
          //     controller: scrollController,
          //     padding: const EdgeInsets.symmetric(vertical: 20.0),
          //     scrollDirection: Axis.horizontal,
          //     separatorBuilder: (context, index) {
          //       return VerticalDivider(
          //         color: Colors.transparent,
          //         width: width * 0.015,
          //       );
          //     },
          //     itemBuilder: (context, index) {
          //       return WidgetAnimator(
          //         child: ProjectCard(
          //           cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
          //           cardHeight: width < 1200 ? height * 0.32 : height * 0.32,
          //           backImage: kProjectsBanner[index],
          //           projectIcon: kProjectsIcons[index],
          //           projectTitle: kProjectsTitles[index],
          //           projectDescription: kProjectsDescriptions[index],
          //           projectLink: kProjectsLinks[index],
          //         ),
          //       );
          //     },
          //     itemCount: 3,
          //   ),
          // ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  scrollValue -= width * 0.5;
                  scrollController.animateTo(
                    scrollValue,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
                icon: const Icon(Icons.arrow_back),
              ),
              const SizedBox(width: 8.0),
              OutlinedCustomBtn(
                btnText: "See More",
                onPressed: () {
                  launchURL("https://github.com/otto-cheung");
                },
              ),
              const SizedBox(width: 8.0),
              IconButton(
                onPressed: () {
                  scrollValue += width * 0.5;
                  scrollController.animateTo(
                    scrollValue,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
                icon: const Icon(Icons.arrow_forward),
              ),
            ],
          )
        ],
      ),
    );
  }
}
