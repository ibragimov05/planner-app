import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planner_app/screens/page_2/widgets/row_container_maker.dart';
import 'package:planner_app/screens/page_2/widgets/row_maker.dart';
import 'package:planner_app/utils/extension/sized_box_extension.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SecondPage extends StatelessWidget {
  List<Map<String, dynamic>> rowContainers_data = [
    {
      'text': 'Thanksgiving',
      'icoPath': 'assets/icons/tea-leaf.png',
      'price': '\$174.99',
      'isSelected': false,
    },
    {
      'text': 'Halloween',
      'icoPath': 'assets/icons/umbrella.png',
      'price': '\$174.99',
      'isSelected': false,
    },
    {
      'text': 'Holiday',
      'icoPath': 'assets/icons/maple-leaf.png',
      'price': '\$174.99',
      'isSelected': true,
    },
  ];

  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF0E1),
      body: Column(
        children: [
          Container(
            width: 375.w,
            height: 220.h,
            padding: EdgeInsets.only(
              left: 50.w,
              right: 50.w,
              top: 50.h,
              bottom: 10.h,
            ),
            color: const Color(0xFFFAF0E1),
            child: Row(
              children: [
                Container(
                  width: 87.w,
                  height: 87.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/profile_photo.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                35.width(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    30.height(),
                    Text(
                      'Jack',
                      style: TextStyle(
                        color: const Color(0xFF2D384B),
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Party organizer',
                      style: TextStyle(
                        color: const Color(0xFF8C929A),
                        fontSize: 13.sp,
                      ),
                    ),
                    10.height(),
                    ZoomTapAnimation(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE17855),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: const Text(
                          'Read more',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30.sp),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.r),
                topLeft: Radius.circular(30.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'October',
                        style: TextStyle(
                          color: const Color(0xFF2D384B),
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: ' Holidays',
                        style: TextStyle(
                            color: const Color(0xFF8C929A), fontSize: 23.sp),
                      ),
                    ],
                  ),
                ),
                30.height(),
                for (var each in rowContainers_data)
                  RowMaker(
                    text: each['text'],
                    icoPath: each['icoPath'],
                    price: each['price'],
                    isSelected: each['isSelected'],
                  ),
                40.height(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Party',
                        style: TextStyle(
                          color: const Color(0xFF2D384B),
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: ' Planning',
                        style: TextStyle(
                            color: const Color(0xFF8C929A), fontSize: 23.sp),
                      ),
                    ],
                  ),
                ),
                15.height(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var each in rowContainers_data)
                        ContainerMaker(
                          icoPath: each['icoPath'],
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
