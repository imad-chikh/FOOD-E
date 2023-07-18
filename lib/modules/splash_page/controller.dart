import 'package:get/get.dart';

import '../../common/routes/names.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();

  @override
  void onReady() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Get.offNamed(
              AppRoutes.Auth,
            ));
    super.onReady();
  }
}
