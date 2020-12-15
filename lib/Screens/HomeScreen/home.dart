import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snabbpay/Screens/HomeScreen/password.dart';
import '../../colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool enableButton = false;
  bool isdropdownEnabled = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    ScreenUtil.init(
      context,
      designSize: Size(750, 1334),
      allowFontScaling: true,
    );

    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).viewInsets.bottom == 0
                ? screenHeight
                // : 850.h,
                : screenHeight,
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
                  height: MediaQuery.of(context).viewInsets.bottom == 0
                      ? 108.16.h
                      : 50.h,
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
                  height: MediaQuery.of(context).viewInsets.bottom == 0
                      ? 100.h
                      : 40.h,
                ),
                Container(
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 0.9 * screenWidth,
                          child: TextField(
                            onTap: () {
                              // isdropdownEnabled = false;
                            },
                            keyboardType: TextInputType.number,
                            enabled: true,
                            style:
                                TextStyle(fontSize: 30.sp, color: Colors.black),
                            onChanged: (value) {
                              print(value);
                              if (value.length > 0 && value != "") {
                                setState(() {
                                  enableButton = true;
                                });
                              } else {
                                setState(() {
                                  enableButton = false;
                                });
                              }
                            },
                            cursorColor: black,
                            decoration: InputDecoration(
                                prefixIcon: InkWell(
                                  onTap: () {
                                    isdropdownEnabled = true;
                                  },
                                  child: Container(
                                    // height: 20.h,
                                    width: 180.w,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: 50.h,
                                            child: Image.asset(
                                              'assets/greenflag.png',
                                              fit: BoxFit.contain,
                                            )),
                                        Container(
                                          margin: EdgeInsets.only(left: 20.w),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '+1',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Icon(Icons.arrow_drop_down,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
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
                isdropdownEnabled
                    ? SingleChildScrollView(
                        child: Container(
                          height: 400.h,
                          margin: EdgeInsets.only(top: 70.h, left: 60.w),
                          child: SingleChildScrollView(
                            child: Column(children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 35.h),
                                width: screenWidth,
                                child: Row(
                                  children: [
                                    Text('Nigeria',
                                        style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Color(0xff7C8990))),
                                    Container(child: Image.asset('')),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 35.h),
                                width: screenWidth,
                                child: Row(
                                  children: [
                                    Text('Canada',
                                        style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Color(0xff7C8990))),
                                    Container(child: Image.asset('')),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 35.h),
                                width: screenWidth,
                                child: Row(
                                  children: [
                                    Text('India',
                                        style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Color(0xff7C8990))),
                                    Container(child: Image.asset('')),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 35.h),
                                width: screenWidth,
                                child: Row(
                                  children: [
                                    Text('Australia',
                                        style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Color(0xff7C8990))),
                                    Container(child: Image.asset('')),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 35.h),
                                width: screenWidth,
                                child: Row(
                                  children: [
                                    Text('United Kingdom',
                                        style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Color(0xff7C8990))),
                                    Container(child: Image.asset('')),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 35.h),
                                width: screenWidth,
                                child: Row(
                                  children: [
                                    Text('Brazil',
                                        style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Color(0xff7C8990))),
                                    Container(child: Image.asset('')),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 35.h),
                                width: screenWidth,
                                child: Row(
                                  children: [
                                    Text('Ghana',
                                        style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Color(0xff7C8990))),
                                    Container(child: Image.asset('')),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      )
                    : Container(),
                MediaQuery.of(context).viewInsets.bottom == 0
                    ? Expanded(
                        child: Container(),
                      )
                    : SizedBox(height: 50.h),
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
                      color:
                          enableButton ? Color(0xff0088D0) : Color(0xffF7F7F8),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: enableButton ? white : Color(0xff7C8990),
                            fontSize: 33.28.sp),
                      ),
                      elevation: 1,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    PasswordScreen()));
                      },
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
