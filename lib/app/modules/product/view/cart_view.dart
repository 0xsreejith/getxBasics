import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_app/app/modules/product/controlers/cart_controller.dart';

class CartView extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CART"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (cartController.cartItems.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Cart is Empty",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      MaterialButton(
                        color: Colors.deepPurple,
                        onPressed: () {
                          Get.toNamed('/');
                        },
                        child: Text(
                          "SHOP NOW",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartController.cartItems[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text("\$${item.price}"),
                      trailing: IconButton(
                        icon: Icon(Icons.remove_circle_outline),
                        onPressed: () {
                          cartController.removeFromCart(item);
                        },
                      ),
                    );
                  },
                );
              }
            }),
          ),
          Obx(() {
            if (cartController.cartItems.isEmpty) return SizedBox.shrink();

            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    "Total: \$${cartController.totalPrice.value.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      Get.offAllNamed('/checkout');
                    },
                    child: Text("CHECKOUT"),
                  ),
                ),
                SizedBox(height: 16),
              ],
            );
          }),
        ],
      ),
    );
  }
}
