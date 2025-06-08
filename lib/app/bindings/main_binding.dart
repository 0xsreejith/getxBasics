import 'package:get/get.dart';
import 'package:simple_app/app/modules/product/controlers/cart_controller.dart';


class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CartController>(CartController());
  }
}
