// import 'package:dio/dio.dart';
// import 'package:flutter_ecommerce_task/api_service/all_product.dart';
// import 'package:flutter_ecommerce_task/model/alProductsBd.dart';
//
// import 'package:get/get.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
//
// class AllProductController extends GetxController with StateMixin<AlProductsBd> {
//   static const _pageSize = 20;
//
//   final PagingController<int, AlProductsBd> _pagingController =
//   PagingController(firstPageKey: 0);
//
//   final Dio _dio = Dio();
//   final AllProductRemoteService _remoteService =AllProductRemoteService(Dio());
//
//   var addDataDoc = <String, dynamic>{};
//   List<AlProductsBd> dataList = <AlProductsBd>[];
//
//   @override
//   void onInit() {
//     super.onInit();
//     // getIn();
//     _pagingController.addPageRequestListener((pageKey) {
//       getIn(pageKey);
//     });
//   }
//   Future<void> getIn(int pageKey) async {
//     change(null, status: RxStatus.loading());
//     try {
//       final newItems = await _remoteService.getAllPost(pageKey, _pageSize);
//       final isLastPage = newItems.data?.products?.results?.length !< !_pageSize;
//       if (isLastPage) {
//         _pagingController.appendLastPage(newItems.data!.products?.results?.length);
//       } else {
//         final nextPageKey = pageKey + newItems.data!.products!.results!.length;
//         _pagingController.appendPage(newItems, nextPageKey);
//       }
//     } catch (error) {
//       _pagingController.error = error;
//     }
//   }
//   try {
//       final dis = await _remoteService.getAllPost();
//       change(dis, status: RxStatus.success());
//     } catch (error) {
//       change(null, status: RxStatus.error());
//     }
//   }
// }


import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_task/api_service/all_product.dart';
import 'package:flutter_ecommerce_task/api_service/products_details.dart';
import 'package:flutter_ecommerce_task/model/alProductsBd.dart';
import 'package:flutter_ecommerce_task/model/productDetails.dart';

import 'package:get/get.dart';

class AllProductController extends GetxController with StateMixin<AlProductsBd> {

  final Dio _dio = Dio();
  final AllProductRemoteService _remoteService = AllProductRemoteService(Dio());

  var addDataDoc = <String, dynamic>{};
  List<AlProductsBd> dataList = <AlProductsBd>[];

  @override
  void onInit() {
    super.onInit();
    getIn();
  }
  Future<void> getIn() async {
    change(null, status: RxStatus.loading());
    try {
      final dis = await _remoteService.getAllPosts();
      change(dis, status: RxStatus.success());
    } catch (error) {
      change(null, status: RxStatus.error());
    }
  }
}