import 'package:get/get.dart';
import 'package:post_mobile_application/core/api/api_service.dart';
import 'package:post_mobile_application/modules/auth/register/controller/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
          () => RegisterController(
        apiService: Get.find<ApiService>(),
      ),
    );
  }
}