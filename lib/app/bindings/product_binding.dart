// product_binding.dart
import 'package:get/get.dart';

import '../modules/product/controlers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(() => ProductController()); // only when needed
  }
}
