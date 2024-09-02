import 'package:ali_delivery_1/core/utils/size_config.dart';
import 'package:ali_delivery_1/core/widget/videoplayer.dart';
import 'package:ali_delivery_1/features/presentation/onBordingView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBody();
}

class _SplashBody extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            //width: SizeConfig.defaultSize! * 50,
            width: SizeConfig.screenWidth,
            height: SizeConfig.defaultSize! * 28,
            child: Image.asset('assets/images/turbo_delivery_logo4.png'),
          ),
          SizedBox(height: SizeConfig.defaultSize! * 2.5),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              "Turbo",
              style: TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 10,
          )
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => Onbordingview(), transition: Transition.fade);
    });
  }
}
