import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/app/src/presentation/home/cubit/home_cubit.dart';
import 'package:test_project/app/src/utils/resources/style_resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeCubit>(context).getproduct();
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            log("home state is $state");
            if (state is HomeLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is HomeSuccess) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/d77c/d56e/0c4c63e4517cf810abe4471aec859db3?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=oicKCuQls8CM3o5iJew8GL8B9bgttmUw2~oV4RMOPNSqtbUyOBLxWysiUVWsaH4tHFbekMPL9pz5NnDq2k9BrB1NCMSV3Hbz3IQJoXd4bDmR7tM6dODHYvIwYUC4f1Gx6E6hg-HJnoyxfkrkPP083-X8G~TWC3H703oC7-CYfrmETUYJxF1TnuQhmKXDBxhFci6dcnOP~a3yMhVNSvLuh9oWk8pijoMFmoPJSkry5E4P~zKfPm8Wc-G-V8X62XLEA3kUhwIaWBFd9bTxElcUCXUagQxyQVGjF5aYUqyblNQnB407r446J9soQ3IIH3PyQEt1kpsVfAhszaDbnCjxuw__",
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(Icons.search, size: 30),
                          SizedBox(width: 10),
                          Icon(Icons.favorite_border, size: 30),
                          SizedBox(width: 10),
                          Icon(CupertinoIcons.bag, size: 30),
                          SizedBox(width: 30),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://swan.alisonsnewdemo.online/images/banner/1695716382_1_sH4k9mEPpOeGBInBvUUc9G2X3tXUhPE41ZH3Vp5B.webp"), fit: BoxFit.fill),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 110,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: StyleResources.whitecolor),
                          ),
                          child: const Center(
                            child: Text(
                              "Shop Now",
                              style: TextStyle(color: StyleResources.whitecolor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
