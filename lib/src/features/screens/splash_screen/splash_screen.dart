import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/image_strjngs.dart';
import '../../../constants/sizes.dart';
import '../../../constants/text_strings.dart';
import '../../authentication/controllers/splash_screen_controller.dart';
import '../welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 150,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 10 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Image(
                  image: AssetImage(tSplashImage),
                  height: 600,
                  width: 400,
                ),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 40 : 0,
              right: tDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blueAccent
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}


