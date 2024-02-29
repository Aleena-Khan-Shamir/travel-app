import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/config/config.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 5), () {
      Get.toNamed(Routes.home);
    });
    debugPrint('splash screen');
    super.onInit();
  }
}
