import 'package:application/views/login.view.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:application/utils/global.colors.dart';
import 'package:get/get.dart';

class SplashView1 extends StatelessWidget {
  const SplashView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 400,
          height: 250,
        ),
      ),
    );
  }
}


/* class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Get.to(LoginView());
    });
    return const Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Text(
          'Logo',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
} */
