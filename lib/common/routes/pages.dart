import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../modules/splash_page/index.dart';
import 'names.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;

  static List<GetPage> routes = [
    GetPage(
        name: AppRoutes.INITIAL,
        page: () => SplashPage(),
        binding: SplashBinding())
  ];
}
