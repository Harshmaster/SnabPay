import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snabbpay/Screens/HomeScreen/createPassword.dart';
import 'package:snabbpay/Screens/SignUp/signupSuccess.dart';

import '../../colors.dart';

class CreateTPIN extends StatefulWidget {
  @override
  _CreateTPINState createState() => _CreateTPINState();
}

class _CreateTPINState extends State<CreateTPIN> {
  bool enableButton = false;
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
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Create Transaction Pin (TPIN)',
                      style: TextStyle(
                          fontSize: 45.76.sp, color: Color(0xff09415F)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 33.28.w, top: 13.h),
                  child: Text(
                    'Remember this TPIN you may require it for some transactions.',
                    style: TextStyle(
                      fontSize: 29.12.sp,
                      color: Color(0xff7C8990),
                    ),
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
                      color:
                          enableButton ? Color(0xff0088D0) : Color(0xffF7F7F8),
                      child: Text(
                        'Create TPIN',
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
                                    SignupSuccess()));
                      },
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
