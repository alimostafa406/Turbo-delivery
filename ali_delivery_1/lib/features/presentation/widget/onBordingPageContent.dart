import 'package:ali_delivery_1/core/utils/size_config.dart';
import 'package:ali_delivery_1/core/widget/space_widget.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Onbordingpagecontent extends StatelessWidget {
  Onbordingpagecontent({Key? key, this.title, this.subTitle, this.image})
      : super(key: key);

  String? title;
  String? subTitle;
  String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
        SizedBox(
            height: SizeConfig.defaultSize! * 30, child: Image.asset(image!)),
        const VerticalSpace(3),
        Text(
          title!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(2),
        Text(
          subTitle!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
