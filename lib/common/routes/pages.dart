// ignore_for_file: constant_identifier_names

import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../modules/auth_page/index.dart';
import '../../modules/sign_in_page/index.dart';
import '../../modules/splash_page/index.dart';
import 'names.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;

  static List<GetPage> routes = [
    GetPage(
        name: AppRoutes.INITIAL,
        page: () => const SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.Auth,
        page: () => const AuthPage(),
        binding: AuthBinding()),
    GetPage(
        name: AppRoutes.SignIn,
        page: () => const SignInPage(),
        binding: SignInBinding()),
    // GetPage(
    //     name: AppRoutes.SignUp,
    //     page: () => const SignUpPage(),
    //     binding: SignUpBinding()),
  ];
}
