import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project/app/src/components/login_repository/login_model.dart';
import 'package:test_project/app/src/utils/resources/pref_resources.dart';
import 'package:test_project/app/src/utils/resources/url_resoures.dart';

class RegisterRepository {
  final dio = Dio();
  Future<LoginModel> userLogin() async {
    try {
      final response = await dio.post(
        UrlResources.login,
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );
      if (response.statusCode == 200) {
        log("login url ${UrlResources.login} response $response");
        final responseData = response.data;
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(PrefResources.USER_TOCKEN, response.data['customerdata']['token'].toString());
        await prefs.setString(PrefResources.USER_ID, response.data['customerdata']['id'].toString());
        return LoginModel.fromJson(responseData);
      } else {
        log("Error response: ${response.toString()}");
        throw Exception("Registration Failed");
      }
    } on DioException catch (e) {
      log('Error during registration: $e');
      final errorResponse = e.response?.data;
      log(errorResponse.toString());
      throw errorResponse["data"]['phone_number'] ?? e.message ?? e.error;
    }
  }
}
