import 'package:flutter/material.dart';
import 'package:otto_portfolio/constants.dart';
import 'package:otto_portfolio/widgets/cards/project_card.dart';
import 'package:otto_portfolio/widgets/custom_button.dart';
import 'package:otto_portfolio/widgets/custom_text_heading.dart';

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
            height: height * 0.6,
            width: width * 0.9,
            margin: EdgeInsets.fromLTRB(0.01 * width, 0, 0.01 * width, 0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                4,
                (index) => Container(
                  margin: EdgeInsets.all(
                    width * 0.02,
                  ),
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.32 : height * 0.32,
                    icon: kProjectsIcons[index],
                    title: kProjectsTitles[index],
                    description: kProjectsDescriptions[index],
                    link: kProjectsLinks[index],
                  ),
                ),
              ),
            ),
          ),
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
