
import 'package:changa_app/src/models/login_model.dart';
import 'package:changa_app/src/models/registration_model.dart';
import 'package:changa_app/src/services/auth_service.dart';

class AuthRepository{
  final _provider = AuthProvider();
  Future<LoginModel> fetchLogin({String? email, String? password}){
    return _provider.fetchLogin(email: email,password:password);
  }
  Future<RegisterModel> fetchEmployee(){
    return _provider.fetchRegistration();
  }
  // Future<AllEmployeeModel> fetchAllEmployee(){
  //   return _provider.fetchAllEmployee();
  // }
  //
  // Future<CreateEmployeeModel> createEmployee(){
  //   return _provider.createEmployee();
  // }


}

