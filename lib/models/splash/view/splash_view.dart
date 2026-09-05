import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';
//import 'package:post_mobile_application/models/splash/';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child:
          controller.loading.value == false ? Text("")
              : CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      );
    });
  }
}

