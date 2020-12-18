import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snabbpay/Screens/Login/otp.dart';

class EnterMobile extends StatefulWidget {
  @override
  _EnterMobileState createState() => _EnterMobileState();
}

class _EnterMobileState extends State<EnterMobile> {
  bool enableButton = false;
  bool isArrowDown = true;
  String selectedCountry;

  bool _keyboardIsVisible() {
    return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: _keyboardIsVisible()
            ? isArrowDown
                ? 380.h
                : 590.h
            : 590.h,
        margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 64.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 136.w,
              height: 38.h,
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage(
                  'assets/Login/logo/Group 5582.png',
                ),
              ),
            ),
            SizedBox(height: 50.h),
            Text(
              "Login or Create New Account",
              style: TextStyle(
                fontSize: 22.ssp,
                color: Color(0xff09415F),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 17.h),
            Text(
              "Enter your mobile number. We’ll send you a One Time Passcode (OTP) to verify your number.",
              style: TextStyle(
                fontSize: 14.ssp,
                color: Color(0xff7C8990),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 50.h),
            Container(
              child: TextField(
                onChanged: (value) {
                  if (value.length == 10) {
                    setState(() {
                      enableButton = true;
                    });
                  } else {
                    setState(() {
                      enableButton = false;
                    });
                  }
                },
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Color(0xff09415F),
                  fontWeight: FontWeight.w500,
                  fontSize: 16.ssp,
                ),
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  hintStyle: TextStyle(
                    color: Color(0xff7C8990),
                    fontSize: 16.ssp,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xff7C8990),
                    width: 1.h,
                  )),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff0088D0),
                      width: 1.5.h,
                    ),
                  ),
                  prefixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isArrowDown = !isArrowDown;
                      });
                    },
                    child: Container(
                      width: selectedCountry != "nigeria" ? 66.w : 78.w,
                      margin: EdgeInsets.only(right: 14.w),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 26.w,
                              height: 17.h,
                              child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                  selectedCountry == 'canada'
                                      ? 'assets/Login/flags/canada/canada.png'
                                      : selectedCountry == 'nigeria'
                                          ? "assets/Login/flags/nigeria/nigiria.png"
                                          : "assets/Login/flags/canada/canada.png",
                                ),
                              ),
                            ),
                            Container(
                              height: 23.h,
                              child: Center(
                                child: Text(
                                  selectedCountry == 'nigeria' ? '+234' : '+1',
                                  style: TextStyle(
                                    color: Color(0xff09415F),
                                    fontSize: 16.ssp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 9.48.w,
                              height: 5.57.h,
                              child: Image(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                    isArrowDown
                                        ? 'assets/Login/arrow_down.png'
                                        : 'assets/Login/arrow_up.png',
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 7.h),
            !isArrowDown
                ? SingleChildScrollView(
                    child: Card(
                      margin: EdgeInsets.all(0),
                      elevation: 1,
                      child: SingleChildScrollView(
                        child: Container(
                          width: 328.w,
                          // height: 350.h, 
                          height: 210.h, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.w),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedCountry = 'nigeria';
                                      isArrowDown = true;
                                    });
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(
                                      left: 21.w,
                                      top: 25.h,
                                    ),
                                    child: Text(
                                      'Nigeria',
                                      style: TextStyle(
                                        color: Color(0xff09415F),
                                        fontSize: 16.ssp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedCountry = 'canada';
                                      isArrowDown = true;
                                    });
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(
                                      left: 21.w,
                                      top: 25.h,
                                    ),
                                    child: Text(
                                      'Canada',
                                      style: TextStyle(
                                        color: Color(0xff09415F),
                                        fontSize: 16.ssp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                    left: 21.w,
                                    top: 25.h,
                                  ),
                                  child: Text(
                                    'India',
                                    style: TextStyle(
                                      color: Color(0xff7C8990),
                                      fontSize: 16.ssp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                    left: 21.w,
                                    top: 25.h,
                                  ),
                                  child: Text(
                                    'Australia',
                                    style: TextStyle(
                                      color: Color(0xff7C8990),
                                      fontSize: 16.ssp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                    left: 21.w,
                                    top: 25.h,
                                  ),
                                  child: Text(
                                    'United Kingdom',
                                    style: TextStyle(
                                      color: Color(0xff7C8990),
                                      fontSize: 16.ssp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                    left: 21.w,
                                    top: 25.h,
                                  ),
                                  child: Text(
                                    'Brazil',
                                    style: TextStyle(
                                      color: Color(0xff7C8990),
                                      fontSize: 16.ssp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                    left: 21.w,
                                    top: 25.h,
                                  ),
                                  child: Text(
                                    'Ghana',
                                    style: TextStyle(
                                      color: Color(0xff7C8990),
                                      fontSize: 16.ssp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                    left: 21.w,
                                    top: 25.h,
                                  ),
                                  child: Text(
                                    'Cameroon',
                                    style: TextStyle(
                                      color: Color(0xff7C8990),
                                      fontSize: 16.ssp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                    left: 21.w,
                                    top: 25.h,
                                    bottom: 25.h,
                                  ),
                                  child: Text(
                                    'South Africa',
                                    style: TextStyle(
                                      color: Color(0xff7C8990),
                                      fontSize: 16.ssp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
            Expanded(child: SizedBox()),
            Center(
              child: InkWell(
                onTap: enableButton
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Otp()));
                      }
                    : null,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.w),
                    color: enableButton ? Color(0xff0088D0) : Color(0xffF7F7F8),
                  ),
                  width: 328.w,
                  height: 48.h,
                  child: Center(
                    child: Text(
                      'Get Started',
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
            Center(
              child: Text(
                "By clicking on the Get Started button, you are agreeing to our",
                style: TextStyle(
                  fontSize: 12.ssp,
                  color: Color(0xff7C8990),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Center(
              child: Text(
                "Terms & Conditions",
                style: TextStyle(
                  fontSize: 12.ssp,
                  color: Color(0xff0088D0),
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    ));
  }
}
