import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controller/favorite_controller.dart';
import 'package:shopping/models/favorite_models.dart';

class BuildItem extends StatelessWidget {
  const BuildItem({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.isFavorite,
  }) : super(key: key);
  final FavoritesModels title;
  final FavoritesModels image;
  final FavoritesModels price;
  final FavoritesModels isFavorite;

  @override
  Widget build(BuildContext context) {
    FavoriteController favoriteController = Get.find();
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 20.0),
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
                image: DecorationImage(image: AssetImage('${image.image}')),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 10),
                  child: Text(
                    '${title.title}',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          'Buy Now',
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${price.price}\$',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        favoriteController.increment();
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                    GetBuilder<FavoriteController>(
                      builder: (controller) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                            color: Colors.white,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              '${controller.counter}',
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        favoriteController.decrement();
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
