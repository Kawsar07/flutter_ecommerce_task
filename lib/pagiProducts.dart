import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_task/model/alProductsBd.dart';
import 'package:flutter_ecommerce_task/widget/card_page.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MyInfiniteScrollPagination extends StatefulWidget {
  const MyInfiniteScrollPagination({Key? key}) : super(key: key);

  @override
  State<MyInfiniteScrollPagination> createState() =>
      _MyInfiniteScrollPaginationState();
}

class _MyInfiniteScrollPaginationState
    extends State<MyInfiniteScrollPagination> {
  // Dio _dio = Dio();
  late Dio dio = Dio();
  int offset = 0;
  int limit = 10;

  final PagingController<int, dynamic> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((offset) {
      fetchNewPage();
    });
    super.initState();
  }

  getDataFromApi() async {
    log("Getting Data:");
    var url1 =
        "https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=rice ";
    final response = await dio.get(url1);

    if (response.statusCode == 200) {
      // return a decoded body
      var c = response.data;
      List characterDetail = c.map((r) => AlProductsBd.fromJson(r)).toList();
      // (json.decode(response.data) as List)
      // .map((data) => CharacterModel.fromJson(data))
      // .toList();
      print('Offset: $offset');
      print('Name[0]: ${characterDetail[0].name}');
      return characterDetail;
      //
    } else {
      return Future.error("Server Error !");
    }
  }

  Future<void> fetchNewPage() async {
    try {
      final List characterDetail = await getDataFromApi();
      //print('Name: ${characterDetail[1].name}');

      _pagingController.appendPage(characterDetail, offset++);
      //_pagingController.appendLastPage(characterDetail);
    } catch (e) {
      _pagingController.error = e;
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Scroll Pagination'),
        centerTitle: true,
      ),
      body: PagedListView<int, dynamic>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<dynamic>(
          itemBuilder: (context, singleCharacterDetail, index) {
            return Column(
              children: [
                card(singleCharacterDetail),
                if (index == _pagingController.itemList!.length - 1)
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text("Please Wait"),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget card(AlProductsBd singleCharacterDetail) {
  return Container(
    width: double.maxFinite,
    margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      border: Border.all(color: Colors.black, width: 1.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        CardPage(
            image: ("${singleCharacterDetail.data?.products?.results![1].image}"),
            title:
            ("${singleCharacterDetail.data?.products?.results![0].brand!.name}"),
            firstText:
            ("${singleCharacterDetail.data?.products?.results![0].brand!.slug}"),
            secoundText:
            ("${singleCharacterDetail.data?.products?.results![0].charge!.currentCharge}"),
            thirdText:
            ("${singleCharacterDetail.data?.products?.results![0].charge!.discountCharge}"),
            fourtText:
            ("${singleCharacterDetail.data?.products?.results![0].charge!.bookingPrice}"),),
      ]
  ),
  );
}
