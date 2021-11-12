// ignore_for_file: file_names

import 'package:flutter_mvc_getx_example/models/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    var serverRespons = [
      Product(
          id: 1,
          price: 30,
          productDescription: "sjnakjs awdnkjwd hewlkd lkmsdlkma",
          productImage: "abc",
          productName: "yek"),
      Product(
          id: 2,
          price: 29,
          productDescription: "sjnakjs awdnkjwd hewlkd lkmsdlkma",
          productImage: "abc",
          productName: "dooo"),
      Product(
          id: 3,
          price: 55,
          productDescription: "sjnakjs awdnkjwd hewlkd lkmsdlkma",
          productImage: "abc",
          productName: "seeeee")
    ];
    products.value = serverRespons;
  }
}
