import 'package:get/get.dart';
import 'package:simple_app/app/modules/product/models/product_model.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    products.addAll([
      ProductModel(name: "Product1", price: 10.89),
      ProductModel(name: "Product2", price: 20.89),
      ProductModel(name: "Product3", price: 30.89)
    ]);
    super.onInit();
  }
}
