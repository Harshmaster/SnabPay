import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    ScreenUtil.init(
      context,
      designSize: Size(750, 1334),
      allowFontScaling: false,
    );

    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 295.36.w,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset('assets/logo.png'),
                  ),
                  margin: EdgeInsets.only(top: 97.76.h, left: 33.28.w),
                  padding: EdgeInsets.all(0),
                ),
                SizedBox(
                  height: 108.16.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 33.28.w),
                  child: Text(
                    'Login or Create New Account',
                    style:
                        TextStyle(fontSize: 45.76.sp, color: Color(0xff09415F)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 33.28.w, top: 10.h),
                  child: Text(
                    'Enter your mobile number. We’ll send you a One Time Passcode (OTP) to verify your number.',
                    style: TextStyle(
                      fontSize: 29.12.sp,
                      color: Color(0xff7C8990),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Container(
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 0.9 * screenWidth,
                          child: TextField(
                            cursorColor: black,
                            decoration: InputDecoration(
                                hasFloatingPlaceholder: true,
                                prefix: InkWell(
                                  onTap: () {},
                                  child: Container(
                                      margin: EdgeInsets.only(right: 20.w),
                                      child: Text('+91')),
                                ),
                                hintText: 'Mobile Number',
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xff7C8990))),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xff7C8990)))),
                          )),
                    ],
                  ),
                ),
                // Column(children: [
                //   Container(
                //     width: screenWidth,
                //     child: Row(
                //       children: [
                //         Text('Nigeria'),
                //         Container(child:Image.asset('')),
                //       ],
                //     ),
                //   )
                // ]),
                Expanded(
                  child: Container(),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 0.90 * screenWidth,
                    height: 99.84.h,
                    child: RaisedButton(
                      color: Color(0xffF7F7F8),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: Color(0xff7C8990), fontSize: 33.28.sp),
                      ),
                      elevation: 1,
                      onPressed: () {},
                    ),
                  ),
                ),
                Align(
                  child: Container(
                    width: 0.9 * screenWidth,
                    margin: EdgeInsets.only(top: 40.h, bottom: 35.h),
                    child: Text(
                      'By clicking on the Get Started button, you are agreeing to our Terms & Conditions',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff7C8990),
                        fontSize: 24.96.sp,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
