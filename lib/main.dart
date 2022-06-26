import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_task/home_page/allProducts.dart';
import 'package:flutter_ecommerce_task/home_page/dem_page.dart';
import 'package:flutter_ecommerce_task/home_page/Products_details.dart';
import 'package:flutter_ecommerce_task/pagiProducts.dart';
import 'package:flutter_ecommerce_task/widget/card_page.dart';
import 'package:flutter_ecommerce_task/widget/searbar_page.dart';
import 'package:flutter_ecommerce_task/widget/search_design.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:get/get.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor:  Color(0xFFEFEFEF)),
      home:
       HomeView(),


    // HomeView(),
    );
  }
}
