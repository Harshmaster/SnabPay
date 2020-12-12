import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snabbpay/Screens/HomeScreen/enterOtp.dart';
import 'package:snabbpay/Screens/SignUp/signup.dart';

import '../../colors.dart';

class CreatePasswordScreen extends StatefulWidget {
  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  bool enableButton = false;
  bool isVisible1 = false;
  bool isVisible2 = false;
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
      appBar: AppBar(
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).viewInsets.bottom == 0
              ? screenHeight - 170.h
              : 850.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 33.28.w, top: 72.8.h),
                child: Text(
                  'Create New Password',
                  style:
                      TextStyle(fontSize: 45.76.sp, color: Color(0xff09415F)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 33.28.w, top: 13.h),
                child: Text(
                  'Remember this password for logging in',
                  style: TextStyle(
                    fontSize: 29.12.sp,
                    color: Color(0xff7C8990),
                  ),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Container(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 0.9 * screenWidth,
                        child: TextField(
                          obscureText: isVisible1,
                          onTap: () {},
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
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisible1 = !isVisible1;
                                    });
                                  },
                                  icon: isVisible1
                                      ? Icon(Icons.visibility,
                                          color: Colors.grey)
                                      : Icon(Icons.visibility_off,
                                          color: Colors.grey)),
                              enabled: true,
                              prefixIcon:
                                  Icon(Icons.lock, color: Color(0xff0088D0)),
                              hintText: 'Enter Password',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.3, color: Color(0xff0088D0))),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xff7C8990)))),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 0.9 * screenWidth,
                        child: TextField(
                          obscureText: isVisible2,
                          onTap: () {},
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
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisible2 = !isVisible2;
                                    });
                                  },
                                  icon: isVisible2
                                      ? Icon(Icons.visibility,
                                          color: Colors.grey)
                                      : Icon(Icons.visibility_off,
                                          color: Colors.grey)),
                              enabled: true,
                              prefixIcon:
                                  Icon(Icons.lock, color: Color(0xff0088D0)),
                              hintText: 'Confirm Password',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.3, color: Color(0xff0088D0))),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xff7C8990)))),
                        )),
                  ],
                ),
              ),
              MediaQuery.of(context).viewInsets.bottom == 0
                  ? Expanded(
                      child: Container(),
                    )
                  : SizedBox(height: 50.h),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(bottom: 35.h),
                  width: 0.90 * screenWidth,
                  height: 99.84.h,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: enableButton ? Color(0xff0088D0) : Color(0xffF7F7F8),
                    child: Text(
                      'Proceed',
                      style: TextStyle(
                          color: enableButton ? white : Color(0xff7C8990),
                          fontSize: 33.28.sp),
                    ),
                    elevation: 1,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.w)),
                                title: Container(
                                  height: 100.h,
                                  width: 100.h,
                                  child: Image.asset(
                                    'assets/tick.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                content: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height:
                                      MediaQuery.of(context).size.height * 0.22,
                                  color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 33.28.w, top: 13.h),
                                        child: Text(
                                          'Password changed successfully!!',
                                          style: TextStyle(
                                            fontSize: 32.sp,
                                            color: Color(0xff09415F),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 33.28.w, top: 35.h),
                                        child: Text(
                                          'Remember this password for login',
                                          style: TextStyle(
                                            fontSize: 28.sp,
                                            color: Color(0xff7C8990),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: SizedBox(height: 0)),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          SignupScreen()));
                                        },
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                              'Continue',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 34.sp,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xff0088D0),
                                              borderRadius:
                                                  BorderRadius.circular(20.w)),
                                          width: double.infinity,
                                          height: 100.h,
                                        ),
                                      )
                                    ],
                                  ),
                                ));
                          });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
