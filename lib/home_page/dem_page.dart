// import 'package:flutter/material.dart';
// import 'package:flutter_ecommerce_task/api_controller/allProduct_controller.dart';
// import 'package:get/get.dart';
//
//
// class ApiLink  extends StatelessWidget {
//   final controller = Get.put(ProductController());
//   ApiLink({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title:  const Text('Product Details'),
//           centerTitle: true,
//         ),
//         body: controller.obx(
//               (state) { return ListTile(
//             title: Text("${state?.data?.products!.results![2].charge!.bookingPrice}"),
//             subtitle: Text("kawsar"),
//           );
//           },
//           onLoading: const Center(child: CircularProgressIndicator()),
//           onError: (error) => Center(child: Text(error.toString())),
//           onEmpty: const Center(child: Text("No Data")),
//
//         )
//     );
//   }
// }