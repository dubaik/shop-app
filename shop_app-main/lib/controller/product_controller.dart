import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/models/category_models.dart';
import 'package:shopping/models/popular_product_models.dart';

class ProductController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController animationController;
  late Animation animations;

  late PageController _pageController;

  PageController get pageController => this._pageController;

  Animation get animation => this.animations;

  List<ProductModels> listProduct = samples_data
      .map((product) => ProductModels(
    id: product['id'],
    title: product['title'],
    price: product['price'],
    image: product['image'],
  )).toList();

  List<ProductModels> get title => this.listProduct;

  List<ProductModels> get image => this.listProduct;

  List<ProductModels> get  price => this.listProduct;
}