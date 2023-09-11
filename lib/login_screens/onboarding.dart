import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Splash1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     
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
               
                Image.asset(
                  "assets/img.jpg",
                  height: 300.0,
                  width: 300.0,
                ),
                 const Text(
                  "TRIPHOPPER",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                 Container( width: 300.0,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.all(18),
                  child: const Text(  textAlign: TextAlign.center,
                    'Seamless journeys at your fingertips!                           Experience the future of transportation  with our revolutionary ride app.',
                    style: TextStyle(fontSize: 12,color: Color(0xff667085)),
                  )),
SizedBox(height: 20,),
                SizedBox(width: 280,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        // foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        backgroundColor: Color(0xffF19305)),
                
                    // ignore: prefer_const_constructors
                    onPressed: () {},
                      
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 34),
                      child: const Text(
                        "Create My Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    // onPressed: () {},
                  ),
                ), SizedBox(
                      height: 5,
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            ' I already have an account',
                            style: TextStyle(fontSize: 10,color: Color(0xffF19305),fontWeight: FontWeight.w100),
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
