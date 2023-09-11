import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);
  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () { 
                   },
                      icon: Icon(Icons.arrow_back_ios_new_outlined, size: 15))
                ],
              ),
              Image.asset(
                  "assets/img.jpg",
                  height: 100.0,
                  width: 100.0,
                ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Welcome Back',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Login to your account',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Email',
                    style: TextStyle(fontSize: 12,color: Color(0xff475467)),
                  )),
              Container(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Enter your email',
                    // onFieldSubmittedValue: (value){
                    //   Utils.fieldFocus(context, emailFocusNode,passwordFocusNode)
                  ),
                ),
              ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Password',
                    style: TextStyle(fontSize: 12,color: Color(0xff475467)),
                  )),
              Container(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Enter your Password ',
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(0),
                  child:TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          color: Color(0xffF19305),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        
                        ),
                      ))),
              SizedBox(
                height: 5,
              ),
            
                      
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
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    // onPressed: () {},
                  ),
                ),
              SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(children: [Expanded(child: Container(margin: EdgeInsets.only(left: 10.0,right: 20.0),child: Divider(color: Colors.black,height: 36,),),),
                              Text("Or sign in with",style: TextStyle(fontSize: 12),),Expanded(child: Container(margin: EdgeInsets.only(left: 10.0,right: 20.0),child: Divider(color: Colors.black,height: 36,),),),],),
                      ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [  InkWell(onTap: _launchGmailURL,
                        child: Container(padding: EdgeInsets.all(10),decoration: ShapeDecoration(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: BorderSide(color: Color(0xffD0D5DD)))),
                          child: const FaIcon(
                                    FontAwesomeIcons.envelope,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                        ),
                      ),
               InkWell(
      onTap: _launchFacebookURL,child: Container(padding: EdgeInsets.all(10),decoration: ShapeDecoration(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: BorderSide(color: Color(0xffD0D5DD)))),
                          child:
                                     const FaIcon(
                                   FontAwesomeIcons.facebook,
                                   color: Colors.blue,
                                   size: 20,
                                 ),),
                       ),
           InkWell(onTap: _launchAppleURL,
             child: Container(padding: EdgeInsets.all(10),decoration: ShapeDecoration(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: BorderSide(color: Color(0xffD0D5DD)))),
                          
                          child:
                     const FaIcon(
              FontAwesomeIcons.apple,
              color: Colors.black,
              size: 20,
                     ),),
           )
        ],),

                Padding(
                    padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.25),
                    child: Row(children: [
                      Text(
                        'Dont have an account?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                          onPressed: () {  },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color(0xffF19305),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ))
                    ]),
                  ),
                
             
            ],
          )),
    );
  }
}
 void _launchFacebookURL() async {
    const url = 'https://www.facebook.com'; // Replace with your Facebook URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
 void _launchGmailURL() async {
    const url = 'https://www.gmail.com'; // Replace with your Facebook URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
 void _launchAppleURL() async {
    const url = 'https://www.apple.com'; // Replace with your Facebook URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
