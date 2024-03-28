import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final phoneNumber = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;
}
