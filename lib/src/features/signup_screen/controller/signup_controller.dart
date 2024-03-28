import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/config/routes/app_pages.dart';

class SignUpController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final phoneNumber = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;
  void goToRegistrationScreen() {
    Get.offNamed(Routes.registration);
  }

  void goToAuthenticationScreen() {
    Get.toNamed(Routes.authentication);
  }

  void goToTestScreen() {
    Get.toNamed(Routes.test);
  }
}
