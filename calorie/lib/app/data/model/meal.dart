class Meal {
  late int id;
  late String meal;
  late bool flag_delete;

  /// Construtor
  Meal(this.id, this.meal, this.flag_delete);

  /// Converte uma row da base de dados para o objeto Meal
  Meal.fromMap(Map<String,dynamic> map) {
    id = map['id'];
    meal = map['meal'];
    flag_delete = map['flag_delete'] == 1 ? true : false;
  }

  /// Converte um objeto Meal para uma row da base de dados
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    
    data['meal'] = meal;
    data['flag_delete'] = flag_delete;

    return data;
  }

  /// Retorna uma String com codigo SQL para criar a tabela deste model
  static String createTable() {
    return "CREATE TABLE meal ("
                "id INTEGER PRIMARY KEY,"
                "meal TEXT,"
                "flag_delete BIT"
          ")";
  }

  @override
  String toString() {
    return "Meal: $id $meal $flag_delete";
  }
}