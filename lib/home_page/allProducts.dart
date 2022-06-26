import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_task/api_controller/allProduct_controller.dart';
import 'package:flutter_ecommerce_task/home_page/Products_details.dart';
import 'package:flutter_ecommerce_task/widget/card_page.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AllProductController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Get'),
        centerTitle: true,
      ),
      body: controller.obx((state) {
        return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                // maxCrossAxisExtent: 200,
                // childAspectRatio: 3 / 2,
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 20),
            itemCount: state?.data?.products?.results?.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: () {
                  Get.to(
                    HomeViews(
                        img: ("${state!.data!.products!.results![index]!.image}"),
                        title:  ("${state?.data?.products?.results![index].brand!.name}"),
                        a: ("${state?.data?.products?.results![index].brand!.slug}"),
                        b:   ("${state?.data?.products?.results![index].charge!.discountCharge}"),
                        d:  ("${state?.data?.products?.results![index].charge!.currentCharge}"),
                        c:  ("${state?.data?.products?.results![index].charge!.sellingPrice}"))
                  );
                },
                child:

                CardPage(
                    image: ("${state?.data?.products?.results![index].image}"),
                    title:
                        ("${state?.data?.products?.results![index].brand!.name}"),
                    firstText:
                        ("${state?.data?.products?.results![index].brand!.slug}"),
                    secoundText:
                        ("${state?.data?.products?.results![index].charge!.discountCharge}"),
                    thirdText:
                        ("${state?.data?.products?.results![index].charge!.sellingPrice}"),
                    fourtText:
                        ("${state?.data?.products?.results![index].charge!.currentCharge}")),
              );


            });


      }),
    );
  }
}
