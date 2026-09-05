import 'package:get/get.dart';
import 'package:post_mobile_application/models/splash/controller/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(()=> SplashController());
  }
}