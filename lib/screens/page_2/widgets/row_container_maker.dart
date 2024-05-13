import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planner_app/utils/extension/sized_box_extension.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ContainerMaker extends StatelessWidget {
  final String icoPath;

  const ContainerMaker({
    super.key,
    required this.icoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ZoomTapAnimation(
          onTap: () {},
          child: Container(
            height: 142.h,
            width: 100.w,
            margin: EdgeInsets.only(right: 25.w),
            padding: EdgeInsets.all(13.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: const Color(0xFFD2E6E6),
            ),
            child: Column(
              children: [
                Image.asset(icoPath),
                15.height(),
                Text(
                  'Birthdays',
                  style: TextStyle(
                    color: const Color(0xFF444B5E),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
