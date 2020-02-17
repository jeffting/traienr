import 'package:flutter/material.dart';
import '../models/dummy.dart';
import '../models/workout.dart';

class WorkoutProvider with ChangeNotifier {
  List<Workout> _workouts = DUMMY;
  int _selectedDay = 2;

  List<Workout> get workouts {
    return [..._workouts];
  }

  int get selectedDay {
    return _selectedDay;
  }

  void setSelectedDay(int day) {
    _selectedDay = day;
    notifyListeners();
  }
}
