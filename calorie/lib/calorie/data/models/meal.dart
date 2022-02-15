class Meal {
  static final table = 'meal';

  int _id = -1;
  String _meal;
  bool _flag_delete = false;  

  /// Construtor
  Meal(this._meal);

  int get id {
    return _id;
  }

  set id(int newID) {
    _id = newID;
  }

  String get meal {
    return _meal;
  }

  bool get flag_delete {
    return _flag_delete;
  }

  String toString() {
    return "{ $_id $_meal $_flag_delete }";
  }
}