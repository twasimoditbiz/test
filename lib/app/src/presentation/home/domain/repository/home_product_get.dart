import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project/app/src/presentation/home/domain/model/product_model.dart';
import 'package:test_project/app/src/utils/resources/pref_resources.dart';
import 'package:test_project/app/src/utils/resources/url_resoures.dart';

class GetProductRepository {
  final dio = Dio();
  Future<ProductModel> productGet() async {
    final prefs = await SharedPreferences.getInstance();
    final tocken = prefs.getString(PrefResources.USER_TOCKEN);
    final id = prefs.getString(PrefResources.USER_ID);
    try {
      final response = await dio.post(
        "${UrlResources.getproduct}?id=$id&token=$tocken",
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );
      if (response.statusCode == 200) {
        log("product get url ${UrlResources.login} response $response");
        final responseData = response.data;
        return ProductModel.fromJson(responseData);
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
