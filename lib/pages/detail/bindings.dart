import 'package:get/get.dart';
import 'package:travel_app/pages/detail/controller.dart';

class DetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
