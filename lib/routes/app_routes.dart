import 'package:get/get.dart';
import 'package:post_mobile_application/models/admin/dashboard/binding/dashboard_binding.dart';
import 'package:post_mobile_application/models/admin/dashboard/view/dashboard_view.dart';
import 'package:post_mobile_application/models/admin/post/binding/post_binding.dart';
import 'package:post_mobile_application/models/admin/post/view/post_view.dart';
import 'package:post_mobile_application/models/auth/login/binding/login_binding.dart';
import 'package:post_mobile_application/models/auth/login/view/login_view.dart';
import 'package:post_mobile_application/models/home/binding/home_binding.dart';
import 'package:post_mobile_application/models/home/view/home_view.dart';
import 'package:post_mobile_application/models/splash/binding/splash_binding.dart';
import 'package:post_mobile_application/models/splash/view/splash_view.dart';
import 'package:post_mobile_application/modules/auth/register/binding/register_binding.dart';
import 'package:post_mobile_application/modules/auth/register/view/register_view.dart';
import 'package:post_mobile_application/routes/app_route_name.dart';

class AppRoutes {
  AppRoutes._();
  static List<GetPage> getAllRoutes() {
    return [
      GetPage(
        name: AppRouteName.splash,
        page: () => SplashView(),
        binding: SplashBinding(),
      ),
      GetPage(
        name: AppRouteName.home,
        page: () => HomeView(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: AppRouteName.login,
        page: () => LoginView(),
        binding: LoginBinding(),
      ),
      GetPage(
        name: AppRouteName.adminDashboard,
        page: () => DashboardView(),
        binding: DashboardBinding(),
      ),
      GetPage(
        name: AppRouteName.adminPost,
        page: () => PostView(),
        binding: PostBinding(),
      ),
      GetPage(
        name: AppRouteName.register,
        page: () => const RegisterView(),
        binding: RegisterBinding(),
      ),
    ];
  }
}
