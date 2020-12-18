import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snabbpay/Screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 640),
        allowFontScaling: true,
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                // primarySwatch: Colors.blue,
                ),
            home: SplashScreen()));
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var screenRatio = MediaQuery.of(context).devicePixelRatio;

//     print('${328.h} WIDTH OF CONTAINER');
//     print('${48.w} HEIGHT OF CONTAINER');

//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(6.w),
//                 color: Color(0xff0088D0),
//               ),
//               width: 328.w,
//               height: 48.h,
//               child: Center(
//                   child: Text('Submit OTP',
//                       style: TextStyle(
//                           fontSize: 16.ssp,
//                           color: Color(0xffFFFFFF),
//                           fontWeight: FontWeight.w500))),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
