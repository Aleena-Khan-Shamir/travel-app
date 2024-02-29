import 'package:get/get.dart';
import 'package:travel_app/config/routes/app_routes.dart';
import '../../pages/pages.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(
        name: Routes.splash,
        page: () => const SplashPage(),
        binding: SplashBindings()),
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBindings()),
    GetPage(
        name: Routes.detail,
        page: () => DetailPage(),
        binding: DetailBindings()),
  ];
}
