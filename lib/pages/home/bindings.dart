import 'package:get/get.dart';
import 'package:travel_app/pages/home/controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
