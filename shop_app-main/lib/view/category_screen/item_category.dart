import 'package:flutter/material.dart';
import 'package:shopping/models/category_models.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.title, required this.image, required this.details})
      : super(key: key);
  final Category title;
  final Category image;
  final Category details;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 8.0),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  //color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      '${image.image}',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.title,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    details.details,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.black26,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
