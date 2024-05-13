import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planner_app/screens/page_1/page_1.dart';
import 'package:planner_app/screens/page_2/page_2.dart';

void main() {
  runApp( App());
}

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PageView(
          children: [
            MainPage(),
            SecondPage(),
          ],
        ),
      ),
    );
  }
}