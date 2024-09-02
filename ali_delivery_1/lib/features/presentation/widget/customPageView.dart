import 'package:ali_delivery_1/features/presentation/widget/onBordingPageContent.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Custompageview extends StatelessWidget {
  Custompageview({Key? key, @required this.pageController}) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        Onbordingpagecontent(
          title: "Fast Delivery",
          subTitle: "Bringing What You Need, When You Need It.",
          image: "assets/images/bordingview1.png",
        ),
        Onbordingpagecontent(
          title: "Delivery on the way",
          subTitle: "Get your order by speed delivery",
          image: "assets/images/bordingview2.png",
        ),
        Onbordingpagecontent(
          title: "Delivery Arrived",
          subTitle: "Delivery Arrived",
          image: "assets/images/bordingview6.png",
        ),
      ],
    );
  }
}
