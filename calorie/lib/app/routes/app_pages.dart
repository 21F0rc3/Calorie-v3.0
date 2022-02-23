import 'package:calorie/app/ui/android/home_page.dart';
import 'package:get/get.dart';

part './app_routes.dart';

class AppPages {
  
  static final routes = [
    GetPage(name: Routes.INITIAL, page:()=> HomePage(),),
  ];
}