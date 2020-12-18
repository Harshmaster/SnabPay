import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snabbpay/Screens/SplashScreen/splash.dart';
import 'package:snabbpay/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xff0088D0), // navigation bar color
    statusBarColor: Color(0xff0088D0),  // status bar color
  ));
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: white,
        primaryColor: white,
      ),
    );
  }
}
