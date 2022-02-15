import 'package:flutter/material.dart';

import 'calorie/calorie.dart';

/// {@template calorie_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class CalorieApp extends MaterialApp {
  /// {@macro counter_app}
  const CalorieApp({Key? key}) : super(key: key, home: const CaloriePage());
}