import 'package:flutter/material.dart';

import '../widgets/drills_list.dart';
import '../widgets/day_selector.dart';
import '../widgets/month_chart.dart';

class WorkoutScreen extends StatelessWidget {
  final appBar = AppBar(title: Text('Daily Grind'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height -
                    appBar.preferredSize.height -
                    MediaQuery.of(context).padding.top) *
                .2,
            child: MonthChart(),
          ),
          Container(
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  .05,
              child: DaySelector()),
          Container(
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  .75,
              child: DrillsList()),
        ],
      ),
    );
  }
}
