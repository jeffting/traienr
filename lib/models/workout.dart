import 'package:flutter/material.dart';

import './drill.dart';

class Workout {
  final List<Drill> drills;
  final DateTime date;
  const Workout({@required this.drills, @required this.date});
}
