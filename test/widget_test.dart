import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:planner_app/utils/extension/sized_box_extension.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 375.w,
          height: 812.h,
          color: Color(0xFFE17855),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topRight,
            children: <Widget>[
              Image.asset(
                'assets/images/background.png',
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              // 200.height(),
              Positioned(
                top: 280.h,
                // bottom: 1,
                child: Container(
                  width: 375.w,

                  decoration: BoxDecoration(color: Colors.yellow,
                    // color: Color(0xFFE17855),
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Autumn day',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Hello Jack',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/profile_photo.png',
                                      ),
                                    ),
                                  ),
                                ),
                                10.width(),
                                Column(
                                  children: [
                                    circleContainer(),
                                    8.height(),
                                    circleContainer(),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            // top: 0,
                            child: Container(
                              width: 375.w,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text('data'),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget circleContainer() {
    return Container(
      width: 5,
      height: 5,
      decoration: BoxDecoration(
        color: Color(0xFFFFF6E5),
        shape: BoxShape.circle,
      ),
    );
  }
}
