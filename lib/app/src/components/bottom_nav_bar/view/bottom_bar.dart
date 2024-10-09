import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/app/src/components/login_repository/login.dart';
import 'package:test_project/app/src/presentation/best_items/view/best_items_screen.dart';
import 'package:test_project/app/src/presentation/brand/view/brand_screen.dart';
import 'package:test_project/app/src/presentation/categories/view/categories_screen.dart';
import 'package:test_project/app/src/presentation/home/view/home_screen.dart';
import 'package:test_project/app/src/presentation/profile/view/profile_screen.dart';
import 'package:test_project/app/src/utils/resources/style_resources.dart';
import 'package:test_project/app/src/widget/bloc.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  final pages = const [
    HomeScreen(),
    BrandScreen(),
    BestItemsScreen(),
    CategoriesScreen(),
    ProfileScreen(),
  ];

  

  @override
  Widget build(BuildContext context) {
    RegisterRepository().userLogin();
    return Scaffold(
      body: BlocBuilder<NavigationCubit, int>(
        builder: (context, pageIndex) {
          return pages[pageIndex];
        },
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navButton(context, 0, Icons.home_outlined),
          navButton(context, 1, Icons.local_offer_outlined),
          navButton(context, 2, Icons.brightness_7_outlined),
          navButton(context, 3, CupertinoIcons.square_grid_2x2),
          navButton(context, 4, CupertinoIcons.person),
        ],
      ),
    );
  }

  Expanded navButton(BuildContext context, int index, IconData icon) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          context.read<NavigationCubit>().selectPage(index);
        },
        child: BlocBuilder<NavigationCubit, int>(
          builder: (context, pageIndex) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: pageIndex == index ? 30 : 25,
                  color: pageIndex == index ? StyleResources.primarycolor : StyleResources.greycolor,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
