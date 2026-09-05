class RegisterRequest {
  RegisterRequest({
    this.phoneNumber,
    this.password,
  });

  RegisterRequest.fromJson(dynamic json) {
    phoneNumber = json['phoneNumber'];
    password = json['password'];
  }

  String? phoneNumber;
  String? password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phoneNumber'] = phoneNumber;
    map['password'] = password;
    return map;
  }
}