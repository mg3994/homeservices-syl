import 'package:get/get.dart';
import 'package:homeservices/src/features/signup_screen/view/signup_screen.dart';

// import '../../../features/authentication_screen/bindings/authentication_binding.dart';
import '../../../features/login_screen/bindings/login_binding.dart';
import '../../../features/login_screen/view/login_screen.dart';
import '../../../features/signup_screen/bindings/sign_up_binding.dart';
import '../../../features/splash_screen/bindings/splash_bindings.dart';
import '../../../features/splash_screen/view/splash_screen.dart';
import '../../../features/test_screen/bindings/test_binding.dart';
import '../../../features/test_screen/view/test_screen.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.registration,
      page: () => const SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.test,
      page: () => const TestScreen(),
      binding: TestBinding(),
    ),

    // GetPage(
    //     name: _Paths.authentication,
    //     page: () => AuthenticationScreen(),
    //     transition: Transition.cupertino,
    //     binding: AuthenticationBinding()),
    // GetPage(
    //   name: _Paths.home,
    //   page: () => HomeScreen(),
    //   binding: HomeBinding(),
    // )
  ];
}
