import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controller/category_controller.dart';
import 'package:shopping/controller/product_controller.dart';
import 'package:shopping/view/category_screen/category_screen.dart';
import 'package:shopping/view/home_screen/build_category.dart';
import 'package:shopping/view/home_screen/header.dart';
import 'package:shopping/view/home_screen/header_title.dart';
import 'package:shopping/view/products/details_product.dart';
import 'package:shopping/view/products/product.dart';
import 'package:shopping/view/products/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    ProductController controller = Get.put(ProductController());
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              HeaderTitle(
                title: 'Categories',
                press: () {
                  Get.to(CategoryScreen());
                },
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    BuildCategory(
                      type: 'Electronics',
                    ),
                    BuildCategory(
                      type: 'Sports',
                    ),
                    BuildCategory(
                      type: 'Health and Beauty',
                    ),
                    BuildCategory(
                      type: 'Business',
                    ),
                    BuildCategory(
                      type: 'Home & Garden',
                    ),
                  ],
                ),
              ),
              HeaderTitle(
                title: 'Popular Products',
                press: ()
                {
                  Get.to(Product());
                },
              ),
              Container(
                color: Colors.grey[200],
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1 / 1.19,
                  children: List.generate(
                    controller.title.length, (index) => ProductScreen(
                    title: controller.title[index],
                    image: controller.image[index],
                    price: controller.price[index],
                    press: () {
                      Get.to(DetailsProduct());
                    },
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
