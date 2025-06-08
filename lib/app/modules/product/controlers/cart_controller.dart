import 'package:get/get.dart';
import 'package:simple_app/app/modules/product/models/product_model.dart';

class CartController extends GetxController {
  final cartItems = <ProductModel>[].obs;
  final totalPrice = 0.0.obs;

  void addToCart(ProductModel product) {
    cartItems.add(product);
    calculateTotalAmount();
  }

  void removeFromCart(ProductModel product) {
    cartItems.remove(product);
    calculateTotalAmount();
  }

  void calculateTotalAmount() {
    totalPrice.value = cartItems.fold(0.0, (sum, item) => sum + item.price);
  }

  @override
  void onInit() {
    super.onInit();
    ever(cartItems, (_) => calculateTotalAmount());
  }
}
