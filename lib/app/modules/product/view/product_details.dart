import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_app/app/modules/product/models/product_model.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModel product = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("PRODUCT DETAIL"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product.name, style: const TextStyle(fontSize: 25)),
            Text(product.price.toString())
          ],
        ),
      ),
    );
  }
}
