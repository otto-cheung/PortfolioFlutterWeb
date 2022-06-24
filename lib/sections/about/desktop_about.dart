import 'package:flutter/material.dart';
import 'package:otto_portfolio/constants.dart';
import 'package:otto_portfolio/provider/theme_provider.dart';
import 'package:otto_portfolio/widget/about_me_data.dart';
import 'package:otto_portfolio/widget/adaptive_text.dart';
import 'package:otto_portfolio/widget/community_button.dart';
import 'package:otto_portfolio/widget/custom_button.dart';
import 'package:otto_portfolio/widget/custom_text_heading.dart';
import 'package:otto_portfolio/widget/tech_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0, 70.0];

  AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
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
                            color: kPrimaryColor, fontSize: height * 0.025),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AdaptiveText(
                        "I'm Otto.",
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
                            color: kPrimaryColor, fontSize: height * 0.018),
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < kTools.length; i++)
                            ToolTechWidget(
                              techName: kTools[i],
                            ),
                        ],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AboutMeData(
                            data: "Name",
                            information: "Otto Cheung",
                          ),
                          AboutMeData(
                            data: "Email",
                            information: "ottocheung199922@gmail.com",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      // Row(
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: OutlinedCustomBtn(
                      //         onPressed: () {
                      //           html.window.open(
                      //               'https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing',
                      //               "pdf");
                      //         },
                      //         btnText: "Resume",
                      //       ),
                      //     ),
                      //     Container(
                      //       width: width * 0.05,
                      //       decoration: BoxDecoration(
                      //         border: Border(
                      //           bottom: BorderSide(
                      //             color: Colors.grey[900]!,
                      //             width: 2.0,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     // for (int i = 0; i < kCommunityLogo.length; i++)
                      //     //   CommunityIconBtn(
                      //     //     icon: kCommunityLogo[i],
                      //     //     link: kCommunityLinks[i],
                      //     //     height: _communityLogoHeight[i],
                      //     //   ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
