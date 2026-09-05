import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_mobile_application/core/api/api_service.dart';
import 'package:post_mobile_application/core/models/auth/register/RegisterRequest.dart';
import 'package:post_mobile_application/routes/app_route_name.dart';

class RegisterController extends GetxController {
  final ApiService apiService;

  RegisterController({required this.apiService});

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();

  var loading = false.obs;

  Future<void> onRegister() async {
    final firstname = firstnameController.text.trim();
    final lastname = lastnameController.text.trim();
    final username = usernameController.text.trim();
    final email = emailController.text.trim();
    final phone = phoneController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    print("FIRSTNAME = [$firstname]");
    print("LASTNAME = [$lastname]");

    // Validation
    if (firstname.isEmpty) {
      Get.snackbar("Error", "Please enter firstname");
      return;
    }

    if (lastname.isEmpty) {
      Get.snackbar("Error", "Please enter lastname");
      return;
    }

    if (username.isEmpty) {
      Get.snackbar("Error", "Please enter username");
      return;
    }

    if (email.isEmpty) {
      Get.snackbar("Error", "Please enter email");
      return;
    }

    if (phone.isEmpty) {
      Get.snackbar("Error", "Please enter phone number");
      return;
    }

    if (password.isEmpty) {
      Get.snackbar("Error", "Please enter password");
      return;
    }

    if (confirmPassword.isEmpty) {
      Get.snackbar("Error", "Please confirm password");
      return;
    }

    if (password != confirmPassword) {
      Get.snackbar("Error", "Passwords do not match");
      return;
    }

    loading.value = true;

    try {
      final response = await apiService.register(
        RegisterRequest(

          firstName: firstname,
          lastName: lastname,
          username: username,
          email: email,
          phoneNumber: phone,
          password: password,
          confirmPassword: confirmPassword,
          role: "USER",
          profile: "",
        ),
      );

      loading.value = false;

      if (response != null) {
        Get.snackbar(
          "Success",
          "Register Successfully",
        );

        Get.offNamed(AppRouteName.login);
      } else {
        Get.snackbar(
          "Error",
          "Register Failed",
        );
      }
    } catch (e) {
      loading.value = false;

      Get.snackbar(
        "Error",
        "Something went wrong: $e",
      );
    }
  }


  @override
  void onClose() {
    firstnameController.dispose();
    lastnameController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    usernameController.dispose();
    emailController.dispose();

    super.onClose();
  }
}