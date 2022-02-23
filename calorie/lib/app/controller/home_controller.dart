import 'package:calorie/app/data/model/meal.dart';
import 'package:calorie/app/data/repository/meal_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {
  final MealRepository repository;
  
  /// Contrutor
  HomeController(this.repository);

  /// Lista de Refeições
  final _mealsList = <Meal>[].obs;
  
  /// Getter da Lista de Refeições
  get mealsList => _mealsList.value;
  
  /// Setter da Lista de Refeições
  set mealsList(value) => _mealsList.value = value;
  
  /// Função que vai buscar e preencher a lista de refeições
  getAll() {
    repository.getAll().then( (data) { this.mealsList = data; } );
  }
}