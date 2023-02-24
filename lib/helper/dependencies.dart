import 'package:get/get.dart';
import 'package:shop_app/controllers/popular_product_controller.dart';
import 'package:shop_app/data/repository/popular_product_repo.dart';

import '../data/api/api_client.dart';

Future<void> init()async{
  Get.lazyPut(()=>ApiClient(appBaseUrl:"https://mvs.bslmeiyu.com"));
  
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

}