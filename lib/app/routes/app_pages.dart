import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:simple_app/app/modules/product/view/product_details.dart';
import 'package:simple_app/app/modules/product/view/product_view.dart';
import 'package:simple_app/app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => ProductView()),
    GetPage(name: AppRoutes.productDetails, page: ()=>ProductDetails())
  ];
}
