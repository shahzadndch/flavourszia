import 'package:flavours_food/pages/HOME/main_food_page.dart';
import 'package:flavours_food/pages/food/popular_food_detail.dart';
import 'package:flavours_food/pages/food/recommended_food_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flavours By Zia-ur-Rehman',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const PopularFoodDetail(),
      home: const MainFoodPage(),
        // home: const RecommendedFoodDetail(),
    );
  }
}
