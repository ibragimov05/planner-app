import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planner_app/screens/page_1/widgets/circle_container.dart';
import 'package:planner_app/screens/page_1/widgets/row_container_maker.dart';
import 'package:planner_app/utils/extension/sized_box_extension.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  List<Map<String, dynamic>> rowContainers_data = [
    {'color': Color(0xFFFAEBC8), 'icoPath': 'assets/icons/tea-leaf.png'},
    {'color': Color(0xFFF0A591), 'icoPath': 'assets/icons/umbrella.png'},
    {'color': Color(0xFFD2E6E6), 'icoPath': 'assets/icons/maple-leaf.png'},
    {'color': Color(0xFFFACDAF), 'icoPath': 'assets/icons/shower.png'},
  ];

  List<String> daySchedule_ls = ['Wedding', 'Birthdays', 'Party', 'Jogging'];

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
                  decoration: BoxDecoration(
                    color: Color(0xFFE17855),
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 30),
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
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 30.w,
                                right: 30.w,
                                top: 50.h,
                                bottom: 30.h,
                              ),
                              width: 375.w,
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.r),
                                  topRight: Radius.circular(40.r),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      for (var each in rowContainers_data)
                                        ContainerMaker(
                                          color: each['color'],
                                          icoPath: each['icoPath'],
                                          isSelected: false,
                                        ),
                                    ],
                                  ),
                                  35.height(),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Day',
                                          style: TextStyle(
                                            color: Color(0xFF2D384B),
                                            fontSize: 23.sp,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Schedule',
                                          style: TextStyle(
                                              color: Color(0xFF8C929A),
                                              fontSize: 23.sp),
                                        )
                                      ],
                                    ),
                                  ),
                                  35.height(),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        for (int i = 0;
                                            i < rowContainers_data.length;
                                            i++)

                                          Column(
                                            children: [
                                              ContainerMaker(
                                                color: rowContainers_data[i]
                                                    ['color'],
                                                icoPath: rowContainers_data[i]
                                                    ['icoPath'],
                                                isSelected: true,
                                              ),
                                              30.height(),
                                              Text(
                                                daySchedule_ls[i],
                                                style: TextStyle(
                                                    color: Color(0xFF292929),
                                                    fontSize: 17.sp,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Text(
                                                '03:50 time',
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Color(0xFFC4C4C4),
                                                ),
                                              )
                                            ],
                                          ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
}
