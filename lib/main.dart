
import 'package:animation_splash_screen/pages/introduction_page.dart';
import 'package:animation_splash_screen/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id: (context) => LoginPage(),

      },
      home:  OnBoardingPage(),
    );
  }
}

