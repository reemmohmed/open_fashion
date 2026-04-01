import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/features/Home/view/widget/cover_item.dart';
import 'package:open_fashion/features/Home/view/widget/footer.dart';
import 'package:open_fashion/features/Home/view/widget/product_item_gride.dart';
import '../../../components/custom_appbar.dart';
import '../../../core/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomAppbar(isBlackk: true),
      body: Stack(
        children: [
          /// texts
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/texts/10.svg"),
          ),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/texts/October.svg"),
          ),
          Positioned(
            top: 85,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/texts/Collection.svg"),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Gap(120),
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(12),
                        child: Image.asset("assets/cover/cover1.png"),
                      ),
                      Gap(20),
                      ProductItemGride(),
                      Gap(5),
                      CustomText(
                        text: "You may also like".toUpperCase(),
                        size: 26,
                      ),
                      Gap(10),
                      Image.asset("assets/svgs/line.png", width: 190),
                      Gap(40),
                      CoverItem(),

                      Gap(20),
                    ],
                  ),
                ),

                Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
