import 'package:flutter/material.dart';
import 'package:otto_portfolio/sections/home/home_desktop.dart';

import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeDesktop();
  }
}
