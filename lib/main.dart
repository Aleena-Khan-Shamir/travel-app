import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/config/config.dart';
import 'package:travel_app/pages/pages.dart';

void main() {
  runApp(const MyApp());
  Get.put(SplashController());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travo',
      theme: AppTheme.themeData(context),
      getPages: AppPages.routes,
      initialRoute: Routes.splash,
    );
  }
}
