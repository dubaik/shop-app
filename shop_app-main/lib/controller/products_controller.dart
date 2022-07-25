import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/models/category_models.dart';
import 'package:shopping/models/popular_product_models.dart';
import 'package:shopping/models/product_models.dart';

class ProductsController extends GetxController
    with SingleGetTickerProviderMixin {

  List<ProductsModels> listProduct = products.map((product) => ProductsModels(
    id: product['id'],
    title: product['title'],
    price: product['price'],
    image: product['image'],
  )).toList();

  List<ProductsModels> get title => this.listProduct;

  List<ProductsModels> get image => this.listProduct;

  List<ProductsModels> get  price => this.listProduct;

  List<ProductsModels> get  id => this.listProduct;
}