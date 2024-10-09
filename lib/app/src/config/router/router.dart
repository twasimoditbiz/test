import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/app/src/components/bottom_nav_bar/view/bottom_bar.dart';
import 'package:test_project/app/src/config/router/const.dart';
import 'package:test_project/app/src/presentation/home/view/home_screen.dart';

final router = GoRouter(
  initialLocation: bottomNavigationScreen,
  navigatorKey: GlobalKey<NavigatorState>(),
  routes: [
    GoRoute(
      name: 'homeScreen',
      path: homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'bottomNavigationScreen',
      path: bottomNavigationScreen,
      builder: (context, state) => const BottomNavigationScreen(),
    ),
  ],
);
