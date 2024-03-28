import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/config/routes/app_pages.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;
  void goToRegistrationScreen() {
    Get.offNamed(Routes.registration);
  }

  void goToAuthenticationScreen() {
    Get.toNamed(Routes.authentication);
  }
}
