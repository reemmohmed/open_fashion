import 'package:flutter/material.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/features/Home/view/widget/about_us.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     
        AboutUs(),

     
        Container(
          width: double.infinity,
          color: const Color(0xff999999),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0, top: 10),
            child: Center(
              child: CustomText(
                max: 3,
                height: 2.5,
                color: Colors.white,
                text: "Copyright© OpenUI All Rights Reserved.",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
