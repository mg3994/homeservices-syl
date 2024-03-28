
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/src/features/splash_screen/controller/splash_controller.dart';

import '../../../core/constants/assets.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
import '../../../core/constants/text_strings.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.startAnimation();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: controller.animate.value ? -35 : 30,
              left: controller.animate.value ? -35 : 30,
              width: 180,
              child: Image.asset(ImagePathConstant.tSplasgIcon),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              top: 80,
              left: controller.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                opacity: controller.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 2000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: TextStyle(
                        fontSize: screenWidth * 0.1, // Taille réactive
                        fontWeight: FontWeight.bold, // Gras
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      tAppTagLine,
                      style: TextStyle(
                        fontSize: screenWidth * 0.09, // Taille réactive
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              height: 200,
              bottom: controller.animate.value ? 150 : 0,
              left: 100,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: controller.animate.value ? 1 : 0,
                child: const Image(
                    image: AssetImage(ImagePathConstant.tSplasgImage)),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              bottom: controller.animate.value ? 60 : 0,
              right: tDefaultSize,
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
