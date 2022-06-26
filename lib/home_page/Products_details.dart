import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_task/api_controller/productDetails.dart';
import 'package:flutter_ecommerce_task/widget/card_page.dart';
import 'package:get/get.dart';

class HomeViews extends StatelessWidget {
  var img;
  var title;
  var a;var b;var c;var d;



   HomeViews({Key? key,this.title,this.a,this.b,this.d,this.img,this.c}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Details'),
          centerTitle: true,
        ),
        body: Center(child:CardPage(     image:img,
      title: title,
      firstText: a,
          secoundText:b,
      thirdText: c,
      fourtText: d,
    ),));
  }
}
