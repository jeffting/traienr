import 'package:flutter/material.dart';

import '../models/dummy.dart';
import './chart_bar.dart';

class MonthChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 3),
        child: Container(
            color: Color.fromRGBO(69, 69, 69, 1),
            padding: EdgeInsets.all(10),
            child: Column(
              children: percentages.map((data) {
                return Flexible(
                  fit: FlexFit.tight,
                  child: ChartBar(data['month'], data['percent']),
                );
              }).toList(),
            )));
  }
}
