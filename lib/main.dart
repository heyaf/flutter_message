import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: Size(360, 690), // 设置设计稿的尺寸
    builder: (context, children) => GetMaterialApp(
      title: "爱宝",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  ));
}
  // runApp(ScreenUtilInit(
  //   designSize: const Size(1080, 2400),
  //   minTextAdapt: true,
  //   splitScreenMode: true,
  //   builder: (context, child) => GetMaterialApp(
  //     title: "爱宝",
  //     initialRoute: AppPages.INITIAL,
  //     getPages: AppPages.routes,
  //     debugShowCheckedModeBanner: false,
  //   ),
  // ));