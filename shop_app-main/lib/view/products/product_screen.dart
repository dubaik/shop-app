import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controller/favorite_controller.dart';
import 'package:shopping/controller/product_controller.dart';
import 'package:shopping/models/popular_product_models.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen(
      {Key? key,
      required this.title,
      required this.image,
      required this.price,
      required this.press})
      : super(key: key);
  final ProductModels title;
  final ProductModels image;
  final ProductModels price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    FavoriteController favoriteController = Get.put(FavoriteController());
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          start: 15,
          top: 15,
          end: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(
                '${image.image}',
              ),
              fit: BoxFit.fill,
              height: 120.0,
            ),
            Expanded(
              child: Text(
                title.title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              children: [
                Text(
                  price.price,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                Obx(
                  () => IconButton(
                    onPressed: () {
                      favoriteController.isFavorites.toggle();
                    },
                    icon: favoriteController.isFavorites.value ? CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                        child: Icon(
                                Icons.favorite,
                                size: 15,
                          color: Colors.white,
                              )
                    ) : CircleAvatar(radius: 10,child: Icon(
                      Icons.favorite_border,
                      size: 15,
                    ),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
