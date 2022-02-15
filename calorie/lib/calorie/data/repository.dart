import 'dart:io';

import 'package:calorie/calorie/data/meal_table.dart';
import 'package:flutter/gestures.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'models/meal.dart';

class Repository{
  /// Singleton
  static Repository? _instance;

  /// Data Providers
  /// Eles vão servir para fazer as manipulacoes nas respetivas tabelas
  final MealTable mealTable = MealTable();

  /// Singleton
  static getInstance() {
    if(Repository._instance == null) {
      return Repository();
    }
    return _instance;
  }

  /// Metodo para inserir dados numa tabela especifica.
  /// Table - representa o respetivo model ou tabela da base de dados
  /// Data - Dados do model que pretendemos inserir
  create(String table, List<dynamic> data) async {
    switch(table) {
      case "meal": {
        Meal newMeal = Meal(data[0]); 

        newMeal.id = await mealTable.insert(newMeal);
        
        break;
      }
      default: {
        print("Table "+table+" on repository.create() does not exist");
      }
    }
  }

  read(table) async {
    switch(table) {
      case "meal": {
        var list = await mealTable.queryAll();

        list.forEach((element) {
          print(element.toString());
        });

        break;
      }
      default: {
        print("Table "+table+" on repository.read() does not exist");
      }
    }
  }


  update(table) async {
    switch(table) {
      case "meal": {
        var list = await mealTable.queryAll();

        list.forEach((element) {
          print(element.toString());
        });

        break;
      }
      default: {
        print("Table "+table+" on repository.read() does not exist");
      }
    }
  }

  delete(table, dynamic model) async {
    switch(table) {
      case "meal": {
        mealTable.delete(model);
        break;
      }
      default: {
        print("Table "+table+" on repository.read() does not exist");
      }
    }
  }




}