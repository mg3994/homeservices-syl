import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
import '../../../core/constants/text_strings.dart';
import '../controller/login_controller.dart';
import 'widget/login_form_widget.dart';
import 'widget/login_header_widget.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            LoginHeaderWidget(size: size),
            const LoginForm(),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(
                  height: size.height *
                      0.02), // Espacement basé sur la hauteur de l'écran
              Center(
                child: TextButton(
                    onPressed: () {
                      controller.goToRegistrationScreen(); //but in controller
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: tblue, // Couleur du texte
                    ),
                    child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: tDonthaveaccount,
                          style: Theme.of(context).textTheme.bodyText1,
                          children: const [
                            TextSpan(
                              text: tSingup,
                              style: TextStyle(color: tblue),
                            ),
                          ],
                        ))),
              )
            ])
          ]),
        ),
      ),
    );
  }
}
