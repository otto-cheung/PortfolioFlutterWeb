import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Color.fromARGB(255, 242, 221, 64);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
];

const kSocialLinks = [
  "https://www.linkedin.com/in/otto-cheung-475267184/",
  "https://github.com/otto-cheung/",
];

// URL Launcher
void launchURL(String url) async => await launchUrl(Uri.parse(url))
    ? await launchUrl(Uri.parse(url))
    : throw 'Could not launch $url';

// Community
final kCommunityLogo = [
  'assets/cui.png',
  'assets/flutterIsl.png',
  'assets/dsc.png',
  'assets/st.png'
];

final kCommunityLinks = [
  "https://www.comsats.edu.pk/",
  "https://web.facebook.com/FlutterIslamabadPakistan/",
  "https://dsc.community.dev/comsats-university-islamabad/",
  "https://sastaticket.pk/"
];

// Tools & Tech
final kTools = [
  "Flutter",
  "Dart",
  "Python",
  "Javascript",
  "Google Firebase",
  "Google ML Vision",
  "MediaPipe",
  "NodeJS",
  "MongoDB"
];

// services
final kServicesIcons = [
  "assets/services/mobile-app.png",
  "assets/services/innovation.png",
  "assets/services/monitoring.png",
  "assets/services/prototype.png",
  "assets/services/github.png",
];

final kServicesTitles = [
  "Mobile App Development",
  "EdTech Development",
  "Vision AI development",
  "Rapid Prototyping",
  "Open Source - GitHub",
];

final kServicesDescriptions = [
  "App development via Flutter\n- Google Firebase\n- REST APIs\n- Database Integration\n-Game development\n- TensorFlow model integration",
  "",
  "Rapid Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
  "Rapid Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
  "Open source GitHub Projects",
];

// projects
final kProjectsBanner = [
  // "assets/projects/medkitB.png",
  // "assets/projects/quranB.png",
  // "assets/projects/hereiamB.png",
  // "assets/projects/covidB.png",
];

final kProjectsIcons = [
  // "assets/projects/medkit.png",
  // "assets/projects/quran.png",
  // "assets/projects/hereiam.png",
  // "assets/projects/covid.png",
  // "assets/projects/messenger.png",
  // "assets/projects/flutter.png",
  // "assets/projects/earbender.png",
  // "assets/projects/java.png",
  // "assets/projects/android.png",
  // "assets/services/open.png",
];

final kProjectsTitles = [
  // "MedKit",
  // "The Holy Qur'an",
  // "Here I Am",
  // "COVID-19",
  // "Messenger Chat Head UI",
  // "flutter.dev - Flutter Web",
  // "Earbender",
  // "File Transfer Protocol",
  // "My Order",
  // "Hidev",
];

final kProjectsDescriptions = [
  // "A Phramacy app developed using Flutter powered with Firebase as database with Doctor and Patient panels.",
  // "Application of Holy book of Muslims, Al-Qur'an. Developed using Flutter. Powered with live RestAPI given in README.md",
  // "Here I am is an Alert app that Sends alert SMS holding your location (Address and Google Maps) to your loved ones.",
  // "A live trakcer for COVID19 stats across the Globe and my Home country Pakistan. It uses APIs so the data is live.",
  // "Tried to clone the famous Chat Heads by Facebook Messenger using Flutter. Its basically in-app not exactly like the original chat head.",
  // "Flutter Official Site clone using Flutter Web. Try the live site here. For the time being its not responsive fully so there might be responsiveness issues.",
  // "A concept of Music App developed using Flutter. Having functionality of playing Audio.",
  // "A simple GUI based Java application that sends file from Client to Server but not the other way around.",
  // "A concept app for self-services at various restaurants now a days. More like a Restaurant Ordering System.",
  // "Its my end semester project. The whole design I developed here is an inspiration from my favortie Flutter Developer Marcin Szałek and his blog Fidev."
];

final kProjectsLinks = [
  // "https://github.com/mhmzdev/MedKit-Pharmacy-App-Using-Flutter",
  // "https://github.com/mhmzdev/The_Holy_Quran_App",
  // "https://github.com/mhmzdev/Here-I-Am-Alert-App",
  // "https://github.com/mhmzdev/Covid19-Tracker-App",
  // "https://github.com/mhmzdev/Messenger-Chat-Head-Flutter-UI",
  // "https://github.com/mhmzdev/flutter.dev-Flutter-Web-Clone",
  // "https://github.com/mhmzdev/Earbender_Music_App",
  // "https://github.com/mhmzdev/FTP_GUI_Java",
  // "https://github.com/mhmzdev/My-Order-Resturant-Ordering-System",
  // "https://github.com/mhmzdev/Hidev_Web",
];

// Contact
final kContactIcons = [
  Icons.work,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Toronto, Canada",
  "+1 (647) 848-3432",
  "ottocheung199922@gmail.com"
];
