import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ContainerMaker extends StatelessWidget {
  final Color color;
  final String icoPath;
  final bool isSelected;

  const ContainerMaker({
    super.key,
    required this.color,
    required this.icoPath,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {},
      child: Container(
        height: isSelected ? 120.h : 60.h,
        width: isSelected ? 100.h : 60.w,
        margin: isSelected ? const EdgeInsets.only(right: 10) : null,
        padding: EdgeInsets.all(13.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: color,
        ),
        child: Image.asset(icoPath),
      ),
    );
  }
}
