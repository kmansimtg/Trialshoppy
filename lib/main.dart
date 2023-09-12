import 'package:assignment1/login_screens/login.dart';
import 'package:flutter/material.dart';
import 'package:assignment1/login_screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'Trialshoppy',
      theme: ThemeData(
      primarySwatch: Colors.orange,
      ),
      //In home: we are adding onboarding page , in onboarding page on clicking "i already haave an account "
      //we are directed to login page
      home: Splash1(),
    );
  }
}

