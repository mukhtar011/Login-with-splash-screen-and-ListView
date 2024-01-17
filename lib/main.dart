import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigation_splashscreen/HomePage.dart';
import 'package:navigation_splashscreen/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:navigation_splashscreen/DetailsScreen.dart';


import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),

    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = 'LogIn';
  @override
  void initState() {
    super.initState();
    whereToGo();

  }
  void whereToGo() async {
    var sharedpref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedpref.getBool(SplashScreenState.KEYLOGIN);

    Timer(
      Duration(seconds: 5),(){
      if (isLoggedIn!= null){
        if(isLoggedIn){
          Navigator.pushReplacement(context as BuildContext,
            MaterialPageRoute(builder: (context) => HomePage()),);
        } else {
          Navigator.pushReplacement(context as BuildContext,
            MaterialPageRoute(builder: (context) => navigation_splashscreen()),);
        }
      } else {
        Navigator.pushReplacement(context as BuildContext,
          MaterialPageRoute(builder: (context) => navigation_splashscreen()),);
      }

    },   );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.blue.shade300,
        child: Center(
            child: Text('Welcome to Flutter', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),),
            ),
      )
    );

  }
}




