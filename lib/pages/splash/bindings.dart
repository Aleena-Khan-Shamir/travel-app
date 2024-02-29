import 'package:get/get.dart';
import 'package:travel_app/pages/splash/controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
