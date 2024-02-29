import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<String> icon = [
    'assets/icons/mountains.webp',
    'assets/icons/wave.webp',
    'assets/icons/pine-tree.webp',
  ];
  final List<String> text = [
    'Mountain',
    'Beach',
    'Forest',
  ];
  final GlobalKey backgroundImageKey = GlobalKey();
  final GlobalKey key = GlobalKey();
}
