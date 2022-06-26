// // // import 'package:flutter/cupertino.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_ecommerce_task/api_controller/allProduct_controller.dart';
// // // import 'package:flutter_ecommerce_task/api_controller/productDetails.dart';
// // // import 'package:flutter_ecommerce_task/widget/card_page.dart';
// // // import 'package:get/get.dart';
// // //
// // // class HomeViews extends StatelessWidget {
// // //   const HomeViews({Key? key}) : super(key: key);
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final controller = Get.put(AllProductController());
// // //     return Scaffold(
// // //         appBar: AppBar(
// // //           title: const Text('Product Details'),
// // //           centerTitle: true,
// // //         ),
// // //         body: controller.obx(
// // //           (state) {
// // //             return SingleChildScrollView(
// // //               child: Column(
// // //                   mainAxisAlignment: MainAxisAlignment.start,
// // //                   children: [
// // //                     const SizedBox(
// // //                       height: 12,
// // //                     ),
// // //                     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
// // //                       CardPage(
// // //                           image: ("${state?.data?.products!.results![2].image}"),
// // //                           title:
// // //                           ("${state?.data?.products!.results![2].productName}"),
// // //                           firstText:
// // //                           ("${state?.data?.products!.results![2].amount}"),
// // //                           secoundText:
// // //                           ("${state?.data?.products!.results![2].category}"),
// // //                           thirdText:
// // //                           ("${state?.data?.products!.results![3].slug}"),
// // //                           fourtText:
// // //                           ("${state?.data?.products!.results![3].id}")),
// // //                       const SizedBox(
// // //                         width: 10,
// // //                       ),
// // //                       CardPage(
// // //                           image: ("${state?.data?.products!.results![3].image}"),
// // //                           title:
// // //                               ("${state?.data?.products!.results![3].productName}"),
// // //                           firstText:
// // //                               ("${state?.data?.products!.results![3].amount}"),
// // //                           secoundText:
// // //                               ("${state?.data?.products!.results![3].category}"),
// // //                           thirdText:
// // //                               ("${state?.data?.products!.results![3].slug}"),
// // //                           fourtText:
// // //                               ("${state?.data?.products!.results![3].id}"))
// // //                     ]),
// // //                     const SizedBox(
// // //                       height: 12,
// // //                     ),
// // //                     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
// // //                       CardPage(
// // //                           image: ("${state?.data?.products!.results![5].image}"),
// // //                           title:
// // //                           ("${state?.data?.products!.results![4].productName}"),
// // //                           firstText:
// // //                           ("${state?.data?.products!.results![4].amount}"),
// // //                           secoundText:
// // //                           ("${state?.data?.products!.results![4].category}"),
// // //                           thirdText:
// // //                           ("${state?.data?.products!.results![4].slug}"),
// // //                           fourtText:
// // //                           ("${state?.data?.products!.results![4].id}")),
// // //                       const SizedBox(
// // //                         width: 8,
// // //                       ),
// // //                       CardPage(
// // //                           image: ("${state?.data?.products!.results![2].image}"),
// // //                           title:
// // //                           ("${state?.data?.products!.results![2].productName}"),
// // //                           firstText:
// // //                           ("${state?.data?.products!.results![2].amount}"),
// // //                           secoundText:
// // //                           ("${state?.data?.products!.results![2].category}"),
// // //                           thirdText:
// // //                           ("${state?.data?.products!.results![3].slug}"),
// // //                           fourtText:
// // //                           ("${state?.data?.products!.results![3].id}"))
// // //                     ]),
// // //                     const SizedBox(
// // //                       height: 12,
// // //                     ),
// // //                     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
// // //                       CardPage(
// // //                           image: ("${state?.data?.products!.results![2].image}"),
// // //                           title:
// // //                           ("${state?.data?.products!.results![2].productName}"),
// // //                           firstText:
// // //                           ("${state?.data?.products!.results![2].amount}"),
// // //                           secoundText:
// // //                           ("${state?.data?.products!.results![2].category}"),
// // //                           thirdText:
// // //                           ("${state?.data?.products!.results![3].slug}"),
// // //                           fourtText:
// // //                           ("${state?.data?.products!.results![3].id}")),
// // //                       const SizedBox(
// // //                         width: 10,
// // //                       ),
// // //                       CardPage(
// // //                           image: ("${state?.data?.products!.results![2].image}"),
// // //                           title:
// // //                           ("${state?.data?.products!.results![2].productName}"),
// // //                           firstText:
// // //                           ("${state?.data?.products!.results![2].amount}"),
// // //                           secoundText:
// // //                           ("${state?.data?.products!.results![2].category}"),
// // //                           thirdText:
// // //                           ("${state?.data?.products!.results![3].slug}"),
// // //                           fourtText:
// // //                           ("${state?.data?.products!.results![3].id}"))
// // //                     ]),
// // //                     const SizedBox(
// // //                       height: 12,
// // //                     ),
// // //                     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
// // //                       CardPage(
// // //                           image: ("${state?.data?.products!.results![2].image}"),
// // //                           title:
// // //                           ("${state?.data?.products!.results![2].productName}"),
// // //                           firstText:
// // //                           ("${state?.data?.products!.results![2].amount}"),
// // //                           secoundText:
// // //                           ("${state?.data?.products!.results![2].category}"),
// // //                           thirdText:
// // //                           ("${state?.data?.products!.results![3].slug}"),
// // //                           fourtText:
// // //                           ("${state?.data?.products!.results![3].id}")),
// // //                       const SizedBox(
// // //                         width: 10,
// // //                       ),
// // //                       CardPage(
// // //                           image: ("${state?.data?.products!.results![2].image}"),
// // //                           title:
// // //                           ("${state?.data?.products!.results![2].productName}"),
// // //                           firstText:
// // //                           ("${state?.data?.products!.results![2].amount}"),
// // //                           secoundText:
// // //                           ("${state?.data?.products!.results![2].category}"),
// // //                           thirdText:
// // //                           ("${state?.data?.products!.results![3].slug}"),
// // //                           fourtText:
// // //                           ("${state?.data?.products!.results![3].id}"))
// // //                     ]),
// // //                     const SizedBox(
// // //                       height: 12,
// // //                     ),
// // //                     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
// // //                       CardPage(
// // //                           image: ("${state?.data?.products!.results![2].image}"),
// // //                           title:
// // //                           ("${state?.data?.products!.results![2].productName}"),
// // //                           firstText:
// // //                           ("${state?.data?.products!.results![2].amount}"),
// // //                           secoundText:
// // //                           ("${state?.data?.products!.results![2].category}"),
// // //                           thirdText:
// // //                           ("${state?.data?.products!.results![3].slug}"),
// // //                           fourtText:
// // //                           ("${state?.data?.products!.results![3].id}")),
// // //                       const SizedBox(
// // //                         width: 10,
// // //                       ),
// // //                       CardPage(
// // //                           image: ("${state?.data?.products!.results![2].image}"),
// // //                           title:
// // //                           ("${state?.data?.products!.results![2].productName}"),
// // //                           firstText:
// // //                           ("${state?.data?.products!.results![2].amount}"),
// // //                           secoundText:
// // //                           ("${state?.data?.products!.results![2].category}"),
// // //                           thirdText:
// // //                           ("${state?.data?.products!.results![3].slug}"),
// // //                           fourtText:
// // //                           ("${state?.data?.products!.results![3].id}"))
// // //                     ]),
// // //                   ]),
// // //             );
// // //           },
// // //           onLoading: const Center(child: CircularProgressIndicator()),
// // //           onError: (error) => Center(child: Text(error.toString())),
// // //           onEmpty: const Center(child: Text("No Data")),
// // //         ));
// // //   }
// // // }
// //
// // import 'package:flutter/material.dart';
// // import 'package:flutter_ecommerce_task/api_controller/allProduct_controller.dart';
// // import 'package:flutter_ecommerce_task/home_page/Products_details.dart';
// // import 'package:flutter_ecommerce_task/widget/card_page.dart';
// // import 'package:get/get.dart';
// //
// // class HomeView extends StatelessWidget {
// //   const HomeView({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final controller = Get.put(AllProductController());
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Api Get'),
// //         centerTitle: true,
// //       ),
// //       body: controller.obx((state) {
// //         return GridView.extent(
// //           primary: false,
// //           padding:  EdgeInsets.all(10),
// //           crossAxisSpacing: 10,
// //           mainAxisSpacing: 10,
// //           maxCrossAxisExtent: 200.0,
// //           children: List.generate(
// //             state!.data!.products!.results!.length,
// //             (index) {
// //               final item = state.data!.products!.results![index];
// //               return   InkWell(
// //                 onTap: (){
// // Get.to(HomeViews(
// //   img: ("${item.image}") ,title:  ("${item.brand?.name}"),a: ("${item.charge?.bookingPrice}") ,b:("${item.charge?.currentCharge}"),c: ("${item.charge?.discountCharge}")) ,
// //
// //
// // );},
// //                 child: CardPage(
// //                     image: ("${item.image}"),
// //                     title:  ("${item.brand?.name}"),
// //                     firstText:  ("${item.charge?.bookingPrice}"),
// //                     secoundText:  ("${item.charge?.currentCharge}"),
// //                     thirdText:  ("${item.charge?.sellingPrice}"),
// //                     fourtText:  ("${item.charge?.discountCharge}")),
// //               );
// //
// //               // Card(
// //               // elevation: 5.0,
// //               // shape: BeveledRectangleBorder(
// //               //   borderRadius: BorderRadius.circular(10.0),
// //               // ),
// //
// //               //   GridView.builder(
// //               //
// //               //   // itemCount: images.length,
// //               //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //               //       crossAxisCount: 2,
// //               //       crossAxisSpacing: 4.0,
// //               //       mainAxisSpacing: 2.0
// //               //   ),
// //               //   itemBuilder: (BuildContext context, int index){
// //               //     return
// //               //       ListView(
// //               //         children: List.generate(state?.length ?? 0, (index)
// //               //     {
// //               //       final item = state![index];
// //               //       return Card(
// //               //         shape: RoundedRectangleBorder(
// //               //
// //               //         ),
// //               //         color: Colors.red,
// //               //         child: Container(
// //               //
// //               //         ),
// //               //         // title: Text("${item.title}"),
// //               //         // subtitle: Text("${item.developer}"),
// //               //         // leading: Image.network(state![index].thumbnail.toString()),
// //               //
// //               //       );
// //               //     }),
// //               //     );
// //               //   },
// //               // );
// //
// //               // ListView(
// //               //
// //               //   children: List.generate(state?.length ?? 0, (index) {
// //               //     final item = state![index];
// //               //     return ListTile(
// //               //       title: Text("${item.title}"),
// //               //       subtitle: Text("${item.developer}"),
// //               //       leading: CircleAvatar(
// //               //
// //               //         backgroundImage: NetworkImage('${item.thumbnail}'),
// //               //       ),
// //               //
// //               //     );
// //               //   }),
// //               // );
// //             },
// //           ),
// //         );
// //       }),
// //     );
// //   }
// // }
//
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

              // image: ("state?.data?.products?.results?[index].images,"), thirdText: '',;
              // title:("state?.data?.products?.results?[index].images,");
              // firstText: ("state?.data?.products?.results![index].brand?.name.toString()"),
              // secoundText:("state?.data?.products?.results?[index].images,");
              // thirdText: ("state?.data?.products?.results?[index].images,");
              // fourtText: ("state?.data?.products?.results?[index].images,"));
            });

        //   GridView.count(
        //   primary: false,
        //   padding:  EdgeInsets.all(10),
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        //   crossAxisCount:  state!.data!.products!.results!.length,
        //   // maxCrossAxisExtent: 100.0,
        //   children: List.generate(
        //     state.data!.products!.results!.length,
        //         (index) {
        //       final item = state.data!.products!.results![index];
        //       return   InkWell(
        //         onTap: (){
        //           Get.to(HomeViews(
        //               c: ("${item.charge?.sellingPrice}"),
        //               img: ("${item.image}") ,title:  ("${item.brand?.name}"),a: ("${item.charge?.bookingPrice}") ,b:("${item.charge?.currentCharge}"),d: ("${item.charge?.discountCharge}")) ,
        //
        //           );},
        //         child:
        //         CardPage(
        //             image: ("${item.image}"),
        //             title:  ("${item.brand?.name}"),
        //             firstText:  ("${item.charge?.bookingPrice}"),
        //             secoundText:  ("${item.charge?.currentCharge}"),
        //             thirdText:  ("${item.charge?.sellingPrice}"),
        //             fourtText:  ("${item.charge?.discountCharge}")),
        //       );
        //
        //
        //     },
        //   ),
        // );
      }),
    );
  }
}
