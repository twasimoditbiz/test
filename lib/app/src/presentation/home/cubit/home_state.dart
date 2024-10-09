part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  final ProductModel productModel;

  HomeSuccess({required this.productModel});
}

final class HomeError extends HomeState {
  final String errorText;

  HomeError({required this.errorText});
}
