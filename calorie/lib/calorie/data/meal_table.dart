import 'package:calorie/calorie/data/data_provider.dart';
import 'package:calorie/calorie/data/database.dart';
import 'package:calorie/calorie/data/models/meal.dart';
import 'package:sqflite/sqflite.dart';

class MealTable implements DataProvider {
  MealTable();

  @override
  Future<int> insert(meal) async {
    if(meal is Meal) {
      final db = await DBProvider.db.database;  

      var row = {'meal':meal.meal,
                'flag_delete':meal.flag_delete};

      meal.id = await db!.insert('meal',row);

      print("Inserted new meal: "+meal.toString());

      return meal.id;
    }

    print("WARNING: Couldn't insert meal because specified type is not Meal in MealTable.insert()");
    return -1;
  }

  @override
  Future<int> delete(meal) async {
    if(meal is Meal) {
      final db = await DBProvider.db.database;  

      await db!.delete("meal", where: "id = ?", whereArgs: [meal.id]);

      print("Deleted meal: "+meal.toString());

      return meal.id;
    }

    print("WARNING: Couldn't insert meal because specified type is not Meal in MealTable.insert()");
    return -1;
  }

  @override
  Future<List<Map<String, Object?>>> queryAll() async {
    final db = await DBProvider.db.database;

    return db!.query('meal');
  }

  @override
  Future<int> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}