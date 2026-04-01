
import 'package:flutter/material.dart';
import 'package:open_fashion/features/Home/view/widget/item_product.dart';
import 'package:open_fashion/models/product_model.dart';
import 'package:open_fashion/pages/checkout.dart';

class ProductItemGride extends StatelessWidget {
  const ProductItemGride({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: ProductModel.products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 15,
        childAspectRatio: 0.50,
      ),
      itemBuilder: (context, index) {
        final item = ProductModel.products[index];
        return GestureDetector(
          onTap:
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (c) => Checkout(
                        image: item.image,
                        name: item.name,
                        price: item.price,
                        descp: item.description,
                      ),
                ),
              ),
          child: ItemProduct(item: item),
        );
      },
    );
  }
}
