import 'package:flutter/material.dart';
import 'package:happyproperties/screens/Reset_link.dart';
import 'package:happyproperties/screens/home_page.dart';
import 'package:happyproperties/screens/landingpage.dart';
import 'package:happyproperties/screens/selectorpage.dart';
import 'screens/profile_page.dart';
import 'screens/normal_marketplace.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}