import 'dart:async';
import 'package:flutter/material.dart';
import 'package:snabbpay/Screens/Login/enterMobile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigateToHome() async {
    Timer(
      Duration(milliseconds: 2000),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => EnterMobile()));
      },
    );
  }

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 640.h,
            width: 360.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200.w,
                  height: 53.h,
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'assets/Login/logo/Group 5582.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
