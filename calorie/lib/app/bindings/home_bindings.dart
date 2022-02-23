import 'package:calorie/app/controller/home_controller.dart';
import 'package:calorie/app/data/provider/api.dart';
import 'package:calorie/app/data/repository/meal_repository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(MealRepository(Api()));
    });
  }
}