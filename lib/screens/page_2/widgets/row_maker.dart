import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planner_app/utils/extension/sized_box_extension.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class RowMaker extends StatelessWidget {
  final String text;
  final String icoPath;
  final String price;
  final bool isSelected;

  const RowMaker({
    super.key,
    required this.text,
    required this.icoPath,
    required this.price,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50.w,
                  height: 50.h,
                  child: Image.asset(icoPath),
                ),
                30.width(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: const Color(0xFF8C929A),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        color: const Color(0xFF2D384B),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ZoomTapAnimation(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xFFE17855) : const Color(0xFFD7DEC8),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: const Text(
                  'View',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
          child: Divider(
            color: Colors.grey.withOpacity(0.2),
          ),
        )
      ],
    );
  }
}
