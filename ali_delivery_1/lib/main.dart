import 'package:ali_delivery_1/features/splash/presentation/widgets/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(aliDeliveryApp());
}

class aliDeliveryApp extends StatelessWidget {
  const aliDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SplashView(),
        ),
      ),
    );
  }
}
