import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_project/app/src/presentation/home/domain/model/product_model.dart';
import 'package:test_project/app/src/presentation/home/domain/repository/home_product_get.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());


  getproduct() async {
    emit(HomeInitial());
    emit(HomeLoading());
    try {
      final ProductModel response = await GetProductRepository().productGet();
      log('cubit Home reponse ==>> $response');
      emit(HomeSuccess(productModel: response));
    } catch (e) {
      log("Home Cubit error ===>>> $e");
      emit(HomeError(errorText: e.toString()));
    }
  }
}
