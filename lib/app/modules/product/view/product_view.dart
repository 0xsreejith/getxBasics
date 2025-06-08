import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_app/app/modules/product/controlers/product_controller.dart';

class ProductView extends StatelessWidget {
  final ProductController productController = Get.find<ProductController>();

  ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Get.toNamed('/cart');
            },
          )
        ],
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: productController.products.length,
            itemBuilder: (context, index) {
              final product = productController.products[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text("\$${product.price}"),
                onTap: () {
                  Get.toNamed('/product-details', arguments: product);
                },
              );
            });
      }),
    );
  }
}
