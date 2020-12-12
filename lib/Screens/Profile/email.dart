import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snabbpay/Screens/HomeScreen/enterOtp.dart';
import 'package:snabbpay/Screens/Profile/address.dart';

import '../../colors.dart';

class EmailScreen extends StatefulWidget {
  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  bool enableButton = false;
  bool isVisible = false;
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
                  'Creating your Profile',
                  style:
                      TextStyle(fontSize: 45.76.sp, color: Color(0xff09415F)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 33.28.w, top: 13.h),
                child: Text(
                  'Welcome to Snabb Pay',
                  style: TextStyle(
                    fontSize: 29.12.sp,
                    color: Color(0xff7C8990),
                  ),
                ),
              ),
              SizedBox(
                height: 104.h,
              ),
              Container(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 0.9 * screenWidth,
                        child: TextField(
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
                              enabled: true,
                              prefixIcon:
                                  Icon(Icons.mail, color: Color(0xff0088D0)),
                              hintText: 'Enter your Email ID',
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
              Container(
                margin: EdgeInsets.only(left: 33.28.w, top: 40.h),
                child: Text('We will send an OTP to that email address',
                    style:
                        TextStyle(color: Color(0xff7C8990), fontSize: 28.sp)),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => AddressScreen()));
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
