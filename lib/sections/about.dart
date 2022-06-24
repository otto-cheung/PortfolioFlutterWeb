import 'package:flutter/material.dart';
import 'package:otto_portfolio/constants.dart';
import 'package:otto_portfolio/provider/theme_provider.dart';
import 'package:otto_portfolio/widgets/about_widget.dart';
import 'package:otto_portfolio/widgets/adaptive_text.dart';
import 'package:otto_portfolio/widgets/custom_text_heading.dart';
import 'package:otto_portfolio/widgets/tech_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    String selfIntro =
        "I'm Otto, a software developer and educational technology ethusiast. I am a recent graduate from Hong Kong University of Science and Technology, majoring in Information Systems and Finance. I have two years of experience in developing Flutter applications and developed a few mobile apps focusing on Vision AI and child education. \n\nCurrently engaging in two projects about helping early-aged children predict the risk of autism by gaze tracking using mobile devices, and developing a mobile game application to help children to train their cognitive and social skills during young ages.";

    return Container(
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nAbout Me"),
          const SizedBox(height: 30.0),
          Row(
            children: [
              //SizedBox(width: 0.075 * width),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "Who am I?",
                        style: GoogleFonts.montserrat(
                            color: kPrimaryColor, fontSize: height * 0.04),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AdaptiveText(
                        selfIntro,
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.w400,
                          color: themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.02,
                          color: Colors.grey[500],
                          height: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[800]!,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Technologies I have worked with:",
                        style: GoogleFonts.montserrat(
                            color: kPrimaryColor, fontSize: height * 0.03),
                      ),
                      Container(
                        width: width,
                        height: height * 0.15,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(kTech.length, (i) {
                            return ToolTechWidget(
                              techName: kTech[i],
                            );
                          }),
                          // child: Row(
                          //   children: [
                          //     for (int i = 0; i < kTools.length; i++)
                          //       ToolTechWidget(
                          //         techName: kTools[i],
                          //       ),
                          //   ],
                          // ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[800]!,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      SizedBox(
                        width: width,
                        height: height * 0.15,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const AboutData(
                                data: "Name",
                                information: "Otto Cheung",
                              ),
                              SizedBox(width: width * 0.55),
                              const AboutData(
                                data: "Email",
                                information: "ottocheung199922@gmail.com",
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.02,
              ),
            ],
          )
        ],
      ),
    );
  }
}
