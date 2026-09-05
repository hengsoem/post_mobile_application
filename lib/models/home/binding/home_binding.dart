import 'package:get/get.dart';
import 'package:post_mobile_application/models/home/controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> HomeController());
  }

}