import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_mobile_application/core/data/local/access_token_storage.dart';
import 'package:post_mobile_application/routes/app_route_name.dart';
import 'package:post_mobile_application/widgets/appbar_custom_widget.dart';

import '../controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child: ListView(
          children: [
            const SizedBox(
              height: 150,
            ),

            // Dashboard
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Get.toNamed(AppRouteName.adminDashboard);
              },
              leading: const Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              title: const Text(
                "Dashboard",
                style: TextStyle(color: Colors.white),
              ),
            ),

            // Logout
            ListTile(
              onTap: () {
                Get.defaultDialog(
                  title: "Logout",
                  middleText: "Are you sure you want to logout?",
                  textCancel: "Cancel",
                  textConfirm: "Logout",
                  onConfirm: () {
                    // Clear token
                    AccessTokenStorage.clearToken();

                    // Go to Login
                    Get.offAllNamed(AppRouteName.login);
                  },
                );
              },
              leading: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Colors.white,

      appBar: AppbarCustomWidget(
        title: "Home",
      ),
    );
  }
}