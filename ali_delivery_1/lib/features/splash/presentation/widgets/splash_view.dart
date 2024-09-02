import 'package:ali_delivery_1/core/constants.dart';
import 'package:ali_delivery_1/features/splash/presentation/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SplashBody(),
    );
  }
}
