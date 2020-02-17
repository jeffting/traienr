import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/workout_provider.dart';

final DateTime today = DateTime.now();

class DaySelector extends StatefulWidget {
  @override
  _DaySelectorState createState() => _DaySelectorState();
}

class _DaySelectorState extends State<DaySelector> {
  final day1 = DateFormat.E().format(today.subtract(Duration(days: 2)));

  final day2 = DateFormat.E().format(today.subtract(Duration(days: 1)));

  final day3 = "Today";

  final day4 = DateFormat.E().format(today.add(Duration(days: 1)));

  final day5 = DateFormat.E().format(today.add(Duration(days: 2)));

  int selectedDay;

  bool isSelectedDay(day) {
    return day == selectedDay ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    final workoutProvider = Provider.of<WorkoutProvider>(context);
    selectedDay = workoutProvider.selectedDay;
    void setDay(int day) {
      if (day != selectedDay) workoutProvider.setSelectedDay(day);
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: FlatButton(
                color: isSelectedDay(0)
                    ? Color.fromRGBO(90, 90, 90, 1)
                    : Colors.transparent,
                child: Text(day1,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.title.color)),
                onPressed: () {
                  setDay(0);
                }),
          ),
          Expanded(
            child: FlatButton(
                color: isSelectedDay(1)
                    ? Color.fromRGBO(90, 90, 90, 1)
                    : Colors.transparent,
                child: Text(day2,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.title.color)),
                onPressed: () {
                  setDay(1);
                }),
          ),
          Expanded(
            child: FlatButton(
              color: isSelectedDay(2)
                  ? Color.fromRGBO(90, 90, 90, 1)
                  : Colors.transparent,
              child: Text(day3,
                  style: TextStyle(
                      color: Theme.of(context).textTheme.title.color)),
              onPressed: () {
                setDay(2);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
                color: isSelectedDay(3)
                    ? Color.fromRGBO(90, 90, 90, 1)
                    : Colors.transparent,
                child: Text(day4,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.title.color)),
                onPressed: () {
                  setDay(3);
                }),
          ),
          Expanded(
            child: FlatButton(
                color: isSelectedDay(4)
                    ? Color.fromRGBO(90, 90, 90, 1)
                    : Colors.transparent,
                child: Text(day5,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.title.color)),
                onPressed: () {
                  setDay(4);
                }),
          ),
        ],
      ),
    );
  }
}
