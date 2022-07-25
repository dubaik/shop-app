import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controller/product_controller.dart';
import 'package:shopping/controller/products_controller.dart';
import 'package:shopping/view/products/all_product_screen.dart';
import 'package:shopping/view/products/details_product.dart';
import 'package:shopping/view/products/product_screen.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductsController controller = Get.put(ProductsController());
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.grey[200],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 20),
                child: Text(
                  'Products',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
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
                    controller.title.length,
                    (index) => ProductsScreen(
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
