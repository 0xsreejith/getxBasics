import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_app/app/modules/product/controlers/cart_controller.dart';
import 'package:simple_app/app/modules/product/models/product_model.dart';

class ProductDetails extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();
  ProductDetails({super.key});

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
            Text(product.price.toString()),
            IconButton(
                onPressed: () {
                  cartController.addToCart(product);
                  Get.snackbar('New Item added', '${product.name} added your cart');
                },
                icon: Icon(Icons.add_shopping_cart))
          ],
        ),
      ),
    );
  }
}
