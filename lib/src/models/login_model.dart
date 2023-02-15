class LoginModel {
  bool? success;
  Data? data;
  String? message;
  String? error;
  LoginModel({this.success, this.data, this.message});
  LoginModel.withError(String errorMessage) {
    error = errorMessage;
  }

  LoginModel.fromJson(Map<String, dynamic> json) {
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
  String? token;
  String? firstName;
  UserData? userData;

  Data({this.token, this.firstName, this.userData});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    firstName = json['first_name'];
    userData = json['user_data'] != null
        ? new UserData.fromJson(json['user_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['first_name'] = this.firstName;
    if (this.userData != null) {
      data['user_data'] = this.userData!.toJson();
    }
    return data;
  }
}

class UserData {
  int? id;
  String? firstName;
  Null? lastName;
  String? username;
  String? mobileNo;
  Null? customerId;
  String? email;
  Null? profilePic;
  Null? backgroundPic;
  Null? website;
  Null? address;
  Null? emailVerifiedAt;
  String? userType;
  String? active;
  String? createdAt;
  String? updatedAt;

  UserData(
      {this.id,
        this.firstName,
        this.lastName,
        this.username,
        this.mobileNo,
        this.customerId,
        this.email,
        this.profilePic,
        this.backgroundPic,
        this.website,
        this.address,
        this.emailVerifiedAt,
        this.userType,
        this.active,
        this.createdAt,
        this.updatedAt});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
    mobileNo = json['mobile_no'];
    customerId = json['customer_id'];
    email = json['email'];
    profilePic = json['profile_pic'];
    backgroundPic = json['background_pic'];
    website = json['website'];
    address = json['address'];
    emailVerifiedAt = json['email_verified_at'];
    userType = json['user_type'];
    active = json['active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['username'] = this.username;
    data['mobile_no'] = this.mobileNo;
    data['customer_id'] = this.customerId;
    data['email'] = this.email;
    data['profile_pic'] = this.profilePic;
    data['background_pic'] = this.backgroundPic;
    data['website'] = this.website;
    data['address'] = this.address;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['user_type'] = this.userType;
    data['active'] = this.active;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}