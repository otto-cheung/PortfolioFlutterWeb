import 'package:flutter/material.dart';
import 'package:otto_portfolio/provider/theme_provider.dart';
import 'package:otto_portfolio/provider/theme_styles.dart';
import 'package:otto_portfolio/sections/main_section.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final ThemeProvider _themeProvider = ThemeProvider();

  void getCurrentAppTheme() async {
    _themeProvider.lightTheme = await _themeProvider.darkThemePref.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: MaterialApp(
        // builder: (context, child) => ResponsiveWrapper.builder(
        //   child,
        //   maxWidth: 1200,
        //   minWidth: 480,
        //   defaultScale: true,
        //   breakpoints: [
        //     ResponsiveBreakpoint.resize(480, name: MOBILE),
        //     ResponsiveBreakpoint.autoScale(800, name: TABLET),
        //     ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        //   ],
        // ),
        debugShowCheckedModeBanner: false,
        theme: ThemeStyles.themeData(
          _themeProvider.lightTheme,
          context,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const MainPage(),
        },
      ),
    );
  }
}
