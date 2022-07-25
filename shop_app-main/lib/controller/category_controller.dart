import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/models/category_models.dart';

class CategoryController extends GetxController
    with SingleGetTickerProviderMixin {

  List<Category> listCategory = sample_data
      .map((category) => Category(
    id: category['id'],
    title: category['title'],
    details: category['details'],
    image: category['image'],
  )).toList();

  List<Category> get title => this.listCategory;

  List<Category> get image => this.listCategory;

  List<Category> get  details => this.listCategory;
}