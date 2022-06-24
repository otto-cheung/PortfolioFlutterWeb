import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:otto_portfolio/animations/bottom_animation.dart';
import 'package:otto_portfolio/animations/entrance_fader.dart';
import 'package:otto_portfolio/constants.dart';
import 'package:otto_portfolio/provider/theme_provider.dart';
import 'package:otto_portfolio/widget/adaptive_text.dart';
import 'package:otto_portfolio/widget/model_viewer.dart';
import 'package:otto_portfolio/widget/social_icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height - 50,
      width: width,
      child: Stack(
        children: [
          // Positioned(
          //   top: width < 1200 ? height * 0.15 : height * 0.1,
          //   right: width * 0.1,
          //   child: Opacity(
          //     opacity: 0.9,
          //     child: EntranceFader(
          //         offset: const Offset(0, 0),
          //         delay: const Duration(seconds: 1),
          //         duration: const Duration(milliseconds: 800),
          //         child: SizedBox(width: 500, height: 500, child: ModelView())),
          //   ),
          // ),
          Container(
            margin:
                EdgeInsets.fromLTRB(width * 0.1, height * 0.2, width * 0.1, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AdaptiveText(
                      "WELCOME TO MY PORTFOLIO ! ",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w300,
                        color: themeProvider.lightTheme
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                    // EntranceFader(
                    //   offset: const Offset(0, 0),
                    //   delay: const Duration(seconds: 2),
                    //   duration: const Duration(milliseconds: 800),
                    //   child: Image.asset(
                    //     "assets/hi.gif",
                    //     height: height * 0.05,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  children: [
                    AdaptiveText(
                      "Otto ",
                      style: GoogleFonts.montserrat(
                          fontSize:
                              width < 1200 ? height * 0.07 : height * 0.095,
                          fontWeight: FontWeight.w100,
                          color: themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                          letterSpacing: 4.0),
                    ),
                    AdaptiveText(
                      "Cheung",
                      style: GoogleFonts.montserrat(
                          color: themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                          fontSize:
                              width < 1200 ? height * 0.07 : height * 0.095,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 5.0),
                    ),
                  ],
                ),
                SizedBox(height: 0.05 * height),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.play_arrow_rounded,
                        color: kPrimaryColor,
                      ),
                      TyperAnimatedTextKit(
                          isRepeatingAnimation: true,
                          speed: const Duration(milliseconds: 50),
                          textStyle: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200,
                            color: themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                          ),
                          text: const [
                            " Software Developer",
                            " EdTech Enthusiast",
                            // " Technical Business Analyst"
                          ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    kSocialIcons.length,
                    (index) => WidgetAnimator(
                      child: SocialMediaIconBtn(
                        icon: kSocialIcons[index],
                        socialLink: kSocialLinks[index],
                        height: height * 0.035,
                        horizontalPadding: width * 0.005,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
