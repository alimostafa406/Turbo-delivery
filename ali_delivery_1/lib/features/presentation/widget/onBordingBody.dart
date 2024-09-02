import 'package:ali_delivery_1/core/constants.dart';
import 'package:ali_delivery_1/core/utils/size_config.dart';
import 'package:ali_delivery_1/core/widget/custom_buttons.dart';
import 'package:ali_delivery_1/features/presentation/widget/customPageView.dart';
import 'package:ali_delivery_1/features/presentation/widget/custom_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onbordingbody extends StatefulWidget {
  const Onbordingbody({Key? key}) : super(key: key);

  @override
  State<Onbordingbody> createState() => _Onbordingbody();
}

class _Onbordingbody extends State<Onbordingbody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: SizeConfig.defaultSize! * 31,
              child: CustomIndicator(
                dotIndex:
                    (pageController!.hasClients ? pageController?.page! : 0)!
                        .toInt(),
              )),
          Custompageview(pageController: pageController),
          Visibility(
            visible: pageController!.hasClients
                ? (pageController?.page == 2 ? false : true)
                : true,
            child: Positioned(
              right: 40,
              top: SizeConfig.defaultSize! * 3,
              child: Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: const Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 22,
            left: SizeConfig.defaultSize! * 9,
            right: SizeConfig.defaultSize! * 9,
            child: CustomGeneralButton(
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get Start' : 'Next')
                  : 'Next',
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  // Get.to(() => Loginview(),
                  //     transition: Transition.rightToLeft,
                  //     duration: Duration(milliseconds: 500));
                }
              },
            ),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 15,
            left: SizeConfig.defaultSize! * 7,
            child: Text(
              "Already have an account?",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xff2f2e41),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 14,
            right: SizeConfig.defaultSize! * 5.5,
            child: TextButton(
              child: Text("Login"),
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Poppins',
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
                foregroundColor: kMainColor,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 8,
            left: SizeConfig.defaultSize! * 9,
            right: SizeConfig.defaultSize! * 9,
            child: TextButton(
              child: Text("Log in as Guest"),
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
                foregroundColor: kMainColor,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
