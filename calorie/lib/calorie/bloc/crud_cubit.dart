import 'package:bloc/bloc.dart';
import 'package:calorie/calorie/data/database.dart';
import 'package:calorie/calorie/data/models/meal.dart';
import 'package:calorie/calorie/data/repository.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class CrudCubit extends Cubit {

  CrudCubit(initialState) : super(initialState);

  // referencia nossa classe single para gerenciar o banco de dados
  final Repository repository = Repository.getInstance();
  
  void create(String table) async {
    repository.create(table,["Refeição"]);
  }
  void read(table) async {
    repository.read(table);
  }
  void update(table) async {
    repository.update(table);
  }
  void delete(table) async {
    Meal naosei = Meal("Adsad");
    naosei.id = 3;

    repository.delete(table,naosei);
  }
}