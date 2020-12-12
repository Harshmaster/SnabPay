import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../colors.dart';

class Documents extends StatefulWidget {
  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  bool enableButton = true;
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
                margin: EdgeInsets.only(left: 33.28.w, top: 40.h),
                child: Text(
                    'Please select and upload one of the following documents',
                    style:
                        TextStyle(color: Color(0xff7C8990), fontSize: 28.sp)),
              ),
              Container(
                width: screenWidth,
                child: Row(
                  children: [
                    Radio(
                      value: 'Driving',
                      groupValue: 'driving',
                      onChanged: (value) {},
                    ),
                    Text(
                      'Driving License',
                      style: TextStyle(fontSize: 32.sp),
                    )
                  ],
                ),
              ),
              Container(
                width: screenWidth,
                child: Row(
                  children: [
                    Radio(
                      value: 'Driving',
                      groupValue: 'driving',
                      onChanged: (value) {},
                    ),
                    Text(
                      'Utility Bill',
                      style: TextStyle(fontSize: 32.sp),
                    )
                  ],
                ),
              ),
              Container(
                width: screenWidth,
                child: Row(
                  children: [
                    Radio(
                      value: 'Driving',
                      groupValue: 'driving',
                      onChanged: (value) {},
                    ),
                    Text(
                      'Identity Card',
                      style: TextStyle(fontSize: 32.sp),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 33.28.w, top: 40.h),
                child: Text(
                    '*Please ensure that the user address is legible on the document and ensure that the address entered matches the address on the document submitted.',
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
                      'Upload Document',
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
                                    'assets/documents.png',
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
                                          'Document Uploaded successfully!!',
                                          style: TextStyle(
                                            fontSize: 28.sp,
                                            color: Color(0xff09415F),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 33.28.w, top: 35.h),
                                        child: Text(
                                          'We will notify you once we verify your details',
                                          style: TextStyle(
                                            fontSize: 24.sp,
                                            color: Color(0xff7C8990),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: SizedBox(height: 0)),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
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
