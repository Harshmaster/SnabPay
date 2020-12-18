import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snabbpay/Screens/Profile/email.dart';
import 'package:snabbpay/Screens/SignUp/createTPIN.dart';
import '../../colors.dart';

class SignupSuccess extends StatefulWidget {
  @override
  _SignupSuccessState createState() => _SignupSuccessState();
}

class _SignupSuccessState extends State<SignupSuccess> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    ScreenUtil.init(
      context,
      designSize: Size(750, 1334),
      allowFontScaling: true,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100.h,
                  width: 100.h,
                  child: Image.asset(
                    'assets/tick.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 33.28.w, top: 13.h),
                  child: Text(
                    'Sign up is Successful',
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: Color(0xff09415F),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 33.28.w, top: 35.h),
                  child: Text(
                    'Welcome to the Snabb Pay Family!!',
                    style: TextStyle(
                      fontSize: 28.sp,
                      color: Color(0xff7C8990),
                    ),
                  ),
                ),
                SizedBox(height: 70.h),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 0.90 * screenWidth,
                    height: 99.84.h,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xff0088D0),
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: white, fontSize: 33.28.sp),
                      ),
                      elevation: 1,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    EmailScreen()));
                      },
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                Text(
                  'I will do it later',
                  style:
                      TextStyle(color: Color(0xff0088D0), fontSize: 33.28.sp),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
