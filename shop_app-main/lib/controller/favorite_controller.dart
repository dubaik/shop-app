import 'package:get/get.dart';
import 'package:shopping/models/favorite_models.dart';

class FavoriteController extends GetxController {
  var counter = 01;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    if (counter > 1) counter--;
    update();
  }

  List<FavoritesModels> listProduct = favoriteProduct
      .map((product) => FavoritesModels(
    id: product['id'],
    title: product['title'],
    price: product['price'],
    image: product['image'],
    isFavorite: product['isFavorite'],
  )).toList();

  List<FavoritesModels> get title => this.listProduct;

  List<FavoritesModels> get image => this.listProduct;

  List<FavoritesModels> get  price => this.listProduct;

  List<FavoritesModels> get  id => this.listProduct;

  List<FavoritesModels> get  isFavorite => this.listProduct;

  var isFavorites = false.obs;

}
