import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controllers/popular_product_controller.dart';
import 'package:shop_app/pages/home/main_items_page.dart';
import 'package:shop_app/pages/items/popular_items_detail.dart';
import 'package:shop_app/pages/items/recommended_item_details.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      Get.find<PopularProductController>().getPopularProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: recommendedItemDetails(),
    );
  }
}
