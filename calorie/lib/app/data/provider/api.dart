import 'dart:convert';
import 'dart:io';
import 'package:calorie/app/data/model/meal.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Api {
  static final String _databaseName = "Calorie.db";
  static final int _databaseVersion = 1;

  static Database? _database;

  /// Metodo Get para a database
  get database async {
    if(_database != null) {
      return _database;
    }

    _database = await initDB();
    return _database;
  }

  /// Metodo Set para a database
  set database(value) => _database = value;

  /// Inicializa a base de dados
  /// Se não existir, cria uma nova base de dados.
  Future<Database> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    
    return await openDatabase(path, version: 1, onOpen: (db) {}, onCreate: (Database db, int version) async {await createDB(db, version);});
  }

  /// Cria uma nova base de dados
  createDB(Database db, int version) async {
    return await db.execute(Meal.createTable());
  }

  /// Procura por todas as entredas da tabela especificada
  /// Chama a função especifica da tabela que vai fazer a pesquisa
  /// Retorna uma lista do tipo com o model da tabela
  queryAll(String table) async {
    switch(table) {
      case 'meal': {
        return await _queryAllMeals(table);
      }
    }
  }

  /// Pesquisa todas as refeições na tabela meal da base de dados
  _queryAllMeals(table) async {
    Database db = await database;
    List<Map<String, Object?>> maps = await db.query(table);

    List<Meal> meals = <Meal>[];

    maps.forEach((element) {
      meals.add(Meal.fromMap(element));
      print(Meal.fromMap(element).toString());
    });

    return meals;
  }
}