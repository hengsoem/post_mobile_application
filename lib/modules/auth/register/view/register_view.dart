import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_mobile_application/modules/auth/register/controller/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Register"),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 16),
              TextField(
                controller: controller.usernameController,
                decoration: const InputDecoration(
                  labelText: "Username",
                  hintText: "Enter your username",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),
              TextField(
                controller: controller.firstnameController,
                decoration: const InputDecoration(
                  labelText: "Firstname",
                  hintText: "Enter your firstname",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: controller.lastnameController,
                decoration: const InputDecoration(
                  labelText: "Lastname",
                  hintText: "Enter your lastname",
                  border: OutlineInputBorder(),
                ),
              ),

              TextField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),
              TextField(
                controller: controller.phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Enter your phone number",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              TextField(
                controller: controller.passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              TextField(
                controller: controller.confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Confirm your password",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: controller.loading.value
                      ? null
                      : () {
                    controller.onRegister();
                  },
                  child: controller.loading.value
                      ? const CircularProgressIndicator()
                      : const Text("Register"),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}