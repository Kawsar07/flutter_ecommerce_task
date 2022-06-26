import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_task/model/productDetails.dart';


class RemoteService {
  Dio _dio = Dio();
  final Dio dio;
  static const String url =
      "https://panel.supplyline.network/api/product-details/-5s5b/";
  RemoteService(this.dio);
  Future<GhModel> getAllPost() async {
    final response = await dio.get(url);
    final data = GhModel.fromJson(response.data);
    return data;
  }
}