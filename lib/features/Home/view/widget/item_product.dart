import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/models/product_model.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    super.key,
    required this.item,
  });

  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(
            12,
          ),
          child: Image.asset(item.image),
        ),
        Gap(10),
        CustomText(text: item.name),
        CustomText(
          text: item.description,
          color: Colors.grey,
        ),
        Gap(9),
        CustomText(
          text: "\$ ${item.price.toString()}",
          color: Colors.red.shade200,
          size: 20,
        ),
      ],
    );
  }
}
