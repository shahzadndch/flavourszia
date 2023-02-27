import 'package:flavours_food/controllers/popular_product_controller.dart';
import 'package:flavours_food/data/api/api_client.dart';
import 'package:flavours_food/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

//api client
Future<void> init() async {
Get.lazyPut(() => ApiClient(appBaseUrl: "http://www.dbestech.com"));

//Repos
Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

//controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

}