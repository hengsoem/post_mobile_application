class UrlConstants {
  UrlConstants._();
  static const String baseUrl = "http://localhost:30033";
  static const String loginPath = "$baseUrl/api/oauth/token";
  static const String registerPath = "$baseUrl/api/oauth/register";
  static const String refreshTokenPath = "$baseUrl/api/oauth/refresh";
  static const String adminListPath = "$baseUrl/api/app/post";

}