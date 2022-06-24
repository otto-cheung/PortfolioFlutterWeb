import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otto_portfolio/constants.dart';
import 'package:otto_portfolio/provider/theme_provider.dart';
import 'package:otto_portfolio/widgets/adaptive_text.dart';
import 'package:provider/provider.dart';

class ContactCard extends StatefulWidget {
  final IconData? iconData;
  final String? title;
  final String? description;
  final double? cardWidth;
  final double? cardHeight;

  const ContactCard(
      {Key? key,
      this.title,
      this.description,
      this.iconData,
      this.cardWidth,
      this.cardHeight})
      : super(key: key);
  @override
  ContactCardState createState() => ContactCardState();
}

class ContactCardState extends State<ContactCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: themeProvider.lightTheme ? Colors.white : Colors.grey[900],
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: kPrimaryColor.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: widget.cardWidth,
              height: widget.cardHeight,
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:
                    themeProvider.lightTheme ? Colors.white : Colors.grey[900],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.iconData != null
                      ? Icon(
                          widget.iconData,
                          color: kPrimaryColor,
                          size: height * 0.1,
                        )
                      : Container(),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    widget.title!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: height * 0.022,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w500,
                      color: themeProvider.lightTheme
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  AdaptiveText(
                    widget.description!,
                    style: GoogleFonts.roboto(
                      fontSize: height * 0.017,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.normal,
                      color: themeProvider.lightTheme
                          ? Colors.black
                          : Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
