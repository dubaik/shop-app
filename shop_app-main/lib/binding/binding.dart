import 'package:get/get.dart';
import 'package:shopping/controller/favorite_controller.dart';

class HomeBinding implements Bindings
{
  @override
  void dependencies() {
    Get.put(FavoriteController());
  }
}