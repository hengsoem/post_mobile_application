import 'dart:convert';

import 'package:get/get.dart';
import 'package:post_mobile_application/constants/url_constant.dart';
import 'package:post_mobile_application/core/api/api_service.dart';
import 'package:post_mobile_application/core/models/post/Content.dart';
import 'package:post_mobile_application/core/models/post/PostResponse.dart';

class PostController extends GetxController {
  final ApiService apiService;

  var dataloading = false.obs;
  var postList = <Content>[].obs;

  PostController({required this.apiService});

  Future<void> getAllPosts() async {
    dataloading.value = true;

    try {
      var response = await apiService.get(
        "${UrlConstants.adminListPath}?page=0&size=10&status=ACT",
      );

      var responseBody = PostResponse.fromJson(jsonDecode(response));

      if (responseBody.data != null) {
        print(responseBody.toJson());

        postList.value = responseBody.data!.content ?? [];
      }
    } catch (e) {
      print("Error loading posts: $e");
    } finally {
      dataloading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getAllPosts();
  }
}
