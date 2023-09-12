import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:assignment1/login_screens/login.dart';


class Splash1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding',
     home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0x0088ffdd),
                Color(0x00ffffff),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                //LOGO AT THE TOP
                Image.asset(
                  "assets/img.jpg",
                  height: 350.0,
                  width: 350.0,
                ),
                 const Text(
                  "TRIPHOPPER",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                 Container( width: 400.0,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.all(18),
                  child: const Text(  textAlign: TextAlign.center,
                  //TEXT PART
                    'Seamless journeys at your fingertips!\nExperience the future of transportation with\n our revolutionary ride app.',
                    style: TextStyle(fontSize: 15,color: Color(0xff667085)),
                  )),
                SizedBox(height: 50,),
                SizedBox(width: 300,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        backgroundColor: Color(0xffF19305)),
                
                    // ignore: prefer_const_constructors
                  onPressed: ()  {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 34),
                      child: const Text(
                        //CREATE MY ACCOUNT BUTTON 
                        "Create My Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    // onPressed: () {},
                  ),
                ), SizedBox(
                      height: 5,
                    ),
                  //ON CLICKING I ALREADY HAVE AN ACCOUNT BUTTON WE ARE DIRECTED TO LOGIN PAGE USING ROUTING-----
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: TextButton(
                          onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login()),
                        );},
                          child: const Text(
                            'I already have an account',
                            style: TextStyle(fontSize: 15,color: Color(0xffF19305),fontWeight: FontWeight.w500),
                          ),
                        )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
