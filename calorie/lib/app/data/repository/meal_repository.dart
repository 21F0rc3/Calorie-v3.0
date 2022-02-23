import 'package:calorie/app/data/model/meal.dart';
import 'package:calorie/app/data/provider/api.dart';
import 'package:sqflite/sqflite.dart';

class MealRepository {
  final Api api;

  final String _tableName = "meal";

  /// Construtor
  MealRepository(this.api);

  /// Chama o metodo da API que vai buscar todas as refeições da base de dados
  getAll() async {
    return await api.queryAll(_tableName);
  }
}