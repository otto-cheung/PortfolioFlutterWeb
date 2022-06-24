import 'package:flutter/material.dart';
import 'package:otto_portfolio/animations/bottom_animation.dart';
import 'package:otto_portfolio/constants.dart';
import 'package:otto_portfolio/widgets/cards/contact_card.dart';
import 'package:otto_portfolio/widgets/custom_text_heading.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nGet in Touch",
          ),
          SizedBox(height: 0.05 * height),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              kContactIcons.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: WidgetAnimator(
                  child: ContactCard(
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                    iconData: kContactIcons[index],
                    title: kContactTitles[index],
                    description: kContactDetails[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
