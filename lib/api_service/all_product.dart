// import 'package:dio/dio.dart';
//
// import '../model/allProduct.dart';
// class AllProductRemoteService {
//   Dio _dio = Dio();
//   final Dio dio;
//   static const String url =
//       "https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=rice";
//   AllProductService (this.dio);
//   Future<AllProduct> getAllPost() async {
//     final response = await dio.get(url);
//     print(response);
//     final data = AllProduct.fromJson(response.data);
//     return data;
//   }
// }


import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_task/model/alProductsBd.dart';


import 'package:flutter_ecommerce_task/model/productDetails.dart';

class AllProductRemoteService{
  Dio _dio = Dio();
  final Dio dio;
  static const String url =
      "https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=rice";
  AllProductRemoteService(this.dio);
  Future<AlProductsBd> getAllPosts() async {
    final response = await dio.get(url);
    final data = AlProductsBd.fromJson(response.data);
    return data;
  }
}