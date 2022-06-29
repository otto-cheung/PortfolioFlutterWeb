import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:otto_portfolio/provider/theme_provider.dart';
import 'package:otto_portfolio/widgets/custom_text_heading.dart';
import 'package:otto_portfolio/widgets/cards/experience_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otto_portfolio/constants.dart';
import 'package:provider/provider.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  ExperienceState createState() => ExperienceState();
}

class ExperienceState extends State<Experience> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nExperiences / Skills"),
          SizedBox(height: 0.05 * height),
          Wrap(
            runSpacing: height * 0.05,
            spacing: width * 0.05,
            alignment: WrapAlignment.center,
            children: List.generate(
              kExpTitle.length,
              (index) => ExperienceCard(
                cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                cardHeight: width < 1200 ? height * 0.37 : height * 0.35,
                iconPath: kExpIcons[index],
                title: kExpTitle[index],
                description: kExpDesc[index],
                cardBack: SkillSetCardBackWidget(
                  serviceTitle: kExpTitle[index],
                  serviceDesc: kExpDesc[index],
                  themeProvider: themeProvider,
                  height: height,
                  width: width,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SkillSetCardBackWidget extends StatelessWidget {
  const SkillSetCardBackWidget(
      {Key? key,
      required ThemeProvider themeProvider,
      required this.height,
      required this.width,
      required this.serviceDesc,
      required this.serviceTitle})
      : _themeProvider = themeProvider,
        super(key: key);

  final ThemeProvider _themeProvider;
  final double height;
  final double width;
  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height * 0.3,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Text(
                serviceDesc,
                style: GoogleFonts.montserrat(
                  color:
                      _themeProvider.lightTheme ? Colors.black : Colors.white,
                  fontSize: height * 0.015,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400,
                  height: width < 900 ? 1.5 : 1.8,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          width: 250.0,
          height: 0.5,
          color:
              _themeProvider.lightTheme ? Colors.grey[400] : Colors.grey[100],
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
