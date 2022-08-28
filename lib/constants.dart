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
void launchURL(String url) async => await launchUrl(Uri.parse(url));

// Tools & Tech
final kTech = [
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

// Experience
final kExpIcons = [
  "assets/images/mobile-app.png",
  "assets/images/innovation.png",
  "assets/images/monitoring.png",
  "assets/images/prototype.png",
  "assets/images/github.png",
];

final kExpTitle = [
  "Mobile App Development",
  "EdTech Development",
  "Vision AI development",
  "Rapid Prototyping",
  "Open Source - GitHub",
];

final kExpDesc = [
  "App development via Flutter\n- Google Firebase\n- REST APIs\n- Database Integration\n- Game development\n- TensorFlow model integration",
  "Ed-Tech Product Development\n- Developed multiple apps including child-portfolio management app, English learning app\n- Engage in autism related research project led by local university\n- Assist and advise secondary school students in prototyping and business pitch",
  "Vision AI development\n- Develop a gaze tracking solution to indicate users' looking direction\n- Integrate multiple AI models via Flutter\n- Trained models to categorise children's emotions",
  "Rapid Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
  "Open source GitHub Projects\n- A MINI-GAMES app for workers to chill and relax during rest time\n- More are coming!",
];

// Projects
final kProjectsIcons = [
  "assets/images/github.png",
  "assets/images/recipeapp.png",
  "assets/images/leklekpig.png",
  "assets/images/minigames.png",
  "assets/images/portfolio.png"
];

final kProjectsTitles = [
  "My github repo",
  "Recipe App",
  "Lek Lek Pig",
  "Mini Games",
  "My portfolio website"
];

final kProjectsDescriptions = [
  "Here's is my GitHub repo. You can view my projects and codes here. As some projects are co-worked, they may not be visible in my GitHub.",
  "Recipe App is a mobile app for people to view recipes and cooking ideas",
  "LekLek Pig is a published portfolio management app for children to build their protfolio easily and export as PDF for interviews in Hong Kong primary schools.",
  "Application of a game app for chill. A timer can be set to alert you when your rest time is up. Google ML vision, camera and REST APIs are used. ",
  "This portfolio website is made with Flutter Web, and deployed using Firebase hosting."
];

final kProjectsLinks = [
  "https://github.com/otto-cheung/",
  "https://github.com/otto-cheung/FlutetrRecipeApp/",
  "https://apps.apple.com/hk/app/leklek-pig-%E5%8F%BB%E5%8F%BB%E8%B1%AC/id1524737635?l=en",
  "https://github.com/otto-cheung/FlutterMiniGames",
  "https://github.com/otto-cheung/PortfolioFlutterWeb"
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
