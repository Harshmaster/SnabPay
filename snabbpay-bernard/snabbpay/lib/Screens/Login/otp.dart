import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:code_fields/code_fields.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  bool enableButton = false;
  bool isArrowDown = true; // NO RELEVANCE 
  bool isTimerOver = false;
  int timer = 30;

  bool _keyboardIsVisible() {
    return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
  }

  countDownFunction() async {
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (timer != 0 && mounted) {
        setState(() {
          timer--;
        });
      } else {
        return;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    countDownFunction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Icon(Icons.arrow_back, color: Color(0xff09415F)),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: _keyboardIsVisible()
              ? isArrowDown
                  ? 300.h
                  : 520.h
              : 520.h,
          margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 33.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter OTP",
                style: TextStyle(
                  fontSize: 22.ssp,
                  color: Color(0xff09415F),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 17.h),
              Container(
                  width: double.infinity,
                  child: Wrap(
                    children: [
                      Text(
                        "Enter the 6 digit code that we sent to ",
                        style: TextStyle(
                          fontSize: 14.ssp,
                          color: Color(0xff7C8990),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "+91 34542xxxxx",
                        style: TextStyle(
                          fontSize: 14.ssp,
                          color: Color(0xff09415F),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )),
              CodeFields(
                length: 6,
                fieldWidth: 28.w,
                margin: EdgeInsets.only(
                  top: 13.h,
                  right: 9.w,
                ),
                keyboardType: TextInputType.number,
                inputDecoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Color(0xff7C8990))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Color(0xff0088D0))),
                ),
                textStyle:
                    TextStyle(fontSize: 18.ssp, color: Color(0xff09415F)),
                onChanged: (String value) {
                  if (value.length == 6) {
                    if (mounted) {
                      setState(() {
                        enableButton = true;
                      });
                    }
                  } else {
                    if (mounted) {
                      setState(() {
                        enableButton = false;
                      });
                    }
                  }
                },
              ),
              timer != 0
                  ? Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 24.h),
                            child: Text(
                              'Resend otp in ',
                              style: TextStyle(
                                color: Color(0xff7C8990),
                                fontSize: 14.ssp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 24.h),
                            child: Text(
                              '00:$timer ',
                              style: TextStyle(
                                color: Color(0xff0088D0),
                                fontSize: 14.ssp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 24.h),
                            child: Text(
                              'sec',
                              style: TextStyle(
                                color: Color(0xff7C8990),
                                fontSize: 14.ssp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        if (mounted) {
                          setState(() {
                            timer = 30;
                          });
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 24.h),
                        child: Text(
                          "Resend OTP",
                          style: TextStyle(
                            fontSize: 12.ssp,
                            color: Color(0xff0088D0),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                    ),
              Expanded(child: SizedBox()),
              Center(
                child: InkWell(
                  onTap: enableButton
                      ? () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (BuildContext context) => Otp()));
                        }
                      : null,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.w),
                      color:
                          enableButton ? Color(0xff0088D0) : Color(0xffF7F7F8),
                    ),
                    width: 328.w,
                    height: 48.h,
                    child: Center(
                      child: Text(
                        'Submit OTP',
                        style: TextStyle(
                            fontSize: 16.ssp,
                            color: enableButton
                                ? Color(0xffFFFFFF)
                                : Color(0xff7C8990),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
