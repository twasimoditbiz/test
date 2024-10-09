import 'package:flutter/material.dart';
import 'package:test_project/app/src/config/router/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/app/src/presentation/home/cubit/home_cubit.dart';
import 'package:test_project/app/src/widget/bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(create: (context) => NavigationCubit()),
        BlocProvider<HomeCubit>(create: (context) => HomeCubit()),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(
          useMaterial3: true,
        ).copyWith(),
      ),
    );
  }
}
