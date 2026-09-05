import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_mobile_application/models/auth/login/controller/login_controller.dart';
import 'package:post_mobile_application/routes/app_route_name.dart';
import 'package:post_mobile_application/widgets/button_custom_widgets.dart';
import 'package:post_mobile_application/widgets/header_title_custom_widgets.dart';
import 'package:post_mobile_application/widgets/input_form_custom.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 35, horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 45,
              ),
              HeaderTitleCustomWidgets(
                title: "Login",
              ),
              SizedBox(height: 45,
              ),
              InputFormCustom(
                controller: controller.usernameController.value,
                lableText: "Username",
                hintText: "Username",
              ),
              InputFormCustom(
                controller: controller.passwordController.value,
                lableText: "Password",
                hintText: "Password",
              ),
              SizedBox(height: 45,
              ),
              ButtonCustomWidgets(

                onClick: (){
                  controller.onLogin();
                },
                loading: controller.loading.value,
                title: "Login",
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRouteName.register);
                    },
                    child: const Text("Register"),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });

  }
}
