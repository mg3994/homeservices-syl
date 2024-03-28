import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/src/features/signup_screen/controller/signup_controller.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
import '../../../core/constants/text_strings.dart';
import 'widgets/signup_header_widget.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              SignupHeaderWidget(size: size),
              Container(
                padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
                child: Form(
                    key: controller.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: controller.nameController,
                          decoration: const InputDecoration(
                            labelText: tFullName,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.person_outline_outlined,
                              color: tSecondaryColor,
                            ),
                            labelStyle: TextStyle(color: tGrisColor),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: tGrisColor),
                            ),
                          ),
                        ),
                        const SizedBox(height: tFormHeight - 20),
                        TextFormField(
                          controller: controller.emailController,
                          decoration: const InputDecoration(
                            labelText: tEmail,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: tSecondaryColor,
                            ),
                            labelStyle: TextStyle(color: tGrisColor),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: tGrisColor),
                            ),
                          ),
                        ),
                        const SizedBox(height: tFormHeight - 20),
                        TextFormField(
                          controller: controller.phoneNumber,
                          decoration: const InputDecoration(
                            labelText: tPhone,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: tSecondaryColor,
                            ),
                            labelStyle: TextStyle(color: tGrisColor),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: tGrisColor),
                            ),
                          ),
                        ),
                        const SizedBox(height: tFormHeight - 20),
                        TextFormField(
                          controller: controller.passwordController,
                          decoration: const InputDecoration(
                            labelText: tpassword,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.fingerprint,
                              color: tSecondaryColor,
                            ),
                            labelStyle: TextStyle(color: tGrisColor),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: tGrisColor),
                            ),
                          ),
                        ),
                        const SizedBox(height: tFormHeight - 10),
                        SizedBox(
                          width:
                              double.infinity, // Takes up all available width
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: tblue, // Button background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: Text(
                              tSingup.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: size.height *
                                    0.02), // Espacement basé sur la hauteur de l'écran
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  controller.goToTestScreen();
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: tblue, // Couleur du texte
                                ),
                                child: Text.rich(
                                  TextSpan(
                                    text: tAlreadyHaveAnAccount,
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                    children: const [
                                      TextSpan(
                                        text: tLogin,
                                        style: TextStyle(color: tblue),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
