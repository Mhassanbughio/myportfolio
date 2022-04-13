import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Color(0xff00cbf0);
const Color k2PrimaryColor = Color(0xff091731);
const Color kTextColor = Colors.white;
// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
];

const kSocialLinks = [
  "https://web.facebook.com/profile.php?id=100007940385097",
  "https://www.instagram.com/h_assan_sahab/",
  "https://twitter.com/Muhamma36404716",
  "https://www.linkedin.com/in/muhammad-hassan-416650189/",
  "https://github.com/Mhassanbughio",
  "https://medium.com/@muhammadhassan-sw18"
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community

// Tools & Tech
final kTools = [
  "Flutter",
  "Dart",
  "Firebase",
  "Nodejs",
];

// services
final kServicesIcons = [
  "assets/app.png",
  "assets/ui.png",
  "assets/rapid.png",
  "assets/blog.png",
  "assets/open.png",
];

final kServicesTitles = [
  "Full App Development",
  "UI/UX Designing",
  "Rapid Prototyping",
  "Technical Blog Writing",
  "Open Source - GitHub",
];

final kServicesDescriptions = [
  "Android app development via Flutter\n- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps integration and more...!",
  "Modern UI/UX Designing\n- Adobe XD\n- Mobile & Web designs\n- Interactive UI designs\n- Responsiveness\n- Promo Videos and more..!",
  "Rapid Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
  "Technical Blog writing\n- Medium blogs\n- Soothing header images\n- SEO friendly\n- Researched topics and more..!",
  "Open source GitHub Projects\n- Awesome README.md\n- Well documented\n- Header images and more...!",
];
//"assets/Fashion week.jpg",
// projects
final kProjectsBanner = [
  "assets/Flutter Form .jpg",
  "assets/Auth Ui.jpg",
  "assets/FOOD COURES.jpg",
  "assets/e commerce Coures .jpg",
];

final kProjectsTitles = [
  "Flutter Form",
  "Auth UI",
  "Food App With Admin Panel",
  "E-commerce app",
];

final kProjectsDescriptions = [
  "Android app development via Flutter\n- Home Screen/Product Overview Screen",
  "Android app development via Flutter\n- Welcome Screen/Login Screen/Sign up Screen",
  "Android app development via Flutter\n- with firebase and provider Youtube Course",
  "Android app development via Flutter\n- E commerce app with firebase and provider Youtube Course",
];

final kProjectsLinks = [
  "https://www.youtube.com/channel/UCbl_sOtO4PSD-HnZ8Y_q5kQ/videos",
  "https://www.youtube.com/channel/UCbl_sOtO4PSD-HnZ8Y_q5kQ/videos",
  "https://www.youtube.com/channel/UCbl_sOtO4PSD-HnZ8Y_q5kQ/videos",
  "https://www.youtube.com/channel/UCbl_sOtO4PSD-HnZ8Y_q5kQ/videos",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Sindh, Pakistan",
  "(+92) 306 7555438",
  "muhammadhassan.sw18@muetkhp.edu.pk"
];
