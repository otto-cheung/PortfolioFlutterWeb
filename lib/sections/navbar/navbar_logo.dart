import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otto_portfolio/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class NavBarLogo extends StatelessWidget {
  final double? height;
  const NavBarLogo({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 20.0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            " Otto Cheung ",
            style: GoogleFonts.rockSalt(
              fontSize: height ?? 16,
              color: themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
