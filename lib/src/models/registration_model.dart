class RegisterModel {
  bool? success;
  Data? data;
  String? message;
  String? error;
  RegisterModel({this.success, this.data, this.message});
  RegisterModel.withError(String errorMessage) {
    error = errorMessage;
  }
  RegisterModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? otpMessage;
  int? userId;
  String? token;

  Data({this.otpMessage, this.userId, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    otpMessage = json['otp_message'];
    userId = json['user_id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['otp_message'] = this.otpMessage;
    data['user_id'] = this.userId;
    data['token'] = this.token;
    return data;
  }
}