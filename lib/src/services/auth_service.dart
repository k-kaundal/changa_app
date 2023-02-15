

import 'dart:convert';

import 'package:changa_app/src/models/login_model.dart';
import 'package:changa_app/src/models/registration_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
class AuthProvider {
  final Dio _dio = Dio();
  final String _url = 'http://112.196.117.52/zillup/api/v1/interests';
  final String _baseUri = 'http://darkevil.club/api/';

  Future<LoginModel> fetchLogin({String? email, String? password}) async {
    try {

      var url = Uri.http('darkevil.club', 'api/login');
      var response = await http.post(url, body: { 'email':email,
        'password':password});
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');



      //
      // Response response = await _dio.post(_url+'login',data:{
      // 'email':email,
      // 'password':password
      // },queryParameters: {
      //   'email':email,
      //   'password':password
      // });
      // print("object");
      // print(response.data
      return LoginModel.fromJson(jsonDecode(response.body));
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return LoginModel.withError("Data not found/ Connection issues");
    }
  }

  Future<RegisterModel> fetchRegistration() async {
    try {
      Response response = await _dio.get(_baseUri + 'registration');
      print(response);
      return RegisterModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Error $error  stacktrace $stacktrace");
      return RegisterModel.withError("Employee data not found");
    }
  }

  // Future<AllEmployeeModel> fetchAllEmployee() async {
  //   try {
  //     Response response = await _dio.get(_baseUri + 'registration');
  //     return AllEmployeeModel.fromJson(response.data);
  //   } catch (error, stacktrace) {
  //     print("Error $error  stacktrace $stacktrace");
  //     return AllEmployeeModel.withError("Employee data not found");
  //   }
  // }
  //
  // Future<CreateEmployeeModel> createEmployee() async {
  //   try {
  //     Response response =
  //     await _dio.post(_baseUri + 'create', queryParameters: {});
  //     return CreateEmployeeModel.fromJson(response.data);
  //   } catch (error, stacktrace) {
  //     print('error $error stacktrace $stacktrace' );
  //     return CreateEmployeeModel.withError("Error in creating new employee");
  //   }
  // }
}