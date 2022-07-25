import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/view/favorite/favorites_screen.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: ()
                {
                  Get.to(FavoriteScreen());
                },
                icon: Icon(
                  Icons.local_grocery_store_outlined,
                ),
              ),
              Expanded(
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        onTap: () {},
                        decoration: InputDecoration(
                          hintText: 'Search',
                          suffixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    )),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
