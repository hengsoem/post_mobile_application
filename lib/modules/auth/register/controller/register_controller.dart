import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_mobile_application/routes/app_route_name.dart';

class RegisterController extends GetxController {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();

  var loading = false.obs;

  void onRegister() async {
    final phone = phoneController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    if (phone.isEmpty) {
      Get.snackbar("Error", "Please enter your phone number");
      return;
    }

    if (password.isEmpty) {
      Get.snackbar("Error", "Please enter your password");
      return;
    }

    if (confirmPassword.isEmpty) {
      Get.snackbar("Error", "Please confirm your password");
      return;
    }

    if (password != confirmPassword) {
      Get.snackbar("Error", "Passwords do not match");
      return;
    }

    loading.value = true;

    // Register API មិនទាន់មាន
    await Future.delayed(const Duration(seconds: 1));

    loading.value = false;

    Get.snackbar(
      "Success",
      "Register Successfully",
    );

    Get.offNamed(AppRouteName.login);
  }

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}