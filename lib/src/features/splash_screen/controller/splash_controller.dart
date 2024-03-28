import 'package:get/get.dart';

import '../../../core/config/routes/app_pages.dart';

class SplashController extends GetxController {
  static SplashController get find => Get.find<SplashController>();
  RxBool animate = false.obs;

  @override
  void onReady() {
    // TODO: implement onReady
    startAnimation();
    super.onReady();
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3500));
    // if (FirebaseAuth.instance.currentUser != null) {
    //     Get.offNamed(Routes.home);
    //   } else {
    Get.offNamed(Routes.login);
    // }
  }
}
