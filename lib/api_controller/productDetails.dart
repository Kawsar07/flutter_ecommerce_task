import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_task/api_service/products_details.dart';
import 'package:flutter_ecommerce_task/model/productDetails.dart';

import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<GhModel> {

  final Dio _dio = Dio();
  final RemoteService _remoteService = RemoteService(Dio());

  var addDataDoc = <String, dynamic>{};
  List<GhModel> dataList = <GhModel>[];

  @override
  void onInit() {
    super.onInit();
    getIn();
  }
  Future<void> getIn() async {
    change(null, status: RxStatus.loading());
    try {
      final dis = await _remoteService.getAllPost();
      change(dis, status: RxStatus.success());
    } catch (error) {
      change(null, status: RxStatus.error());
    }
  }
}