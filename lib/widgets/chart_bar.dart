import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String month;
  final int percent;
  ChartBar(this.month, this.percent);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Row(
        children: <Widget>[
          Container(
            height: 20,
            width: constraints.maxWidth * .15,
            child: FittedBox(
              child: Text('${month}', style: Theme.of(context).textTheme.body2),
            ),
          ),
          SizedBox(width: constraints.maxWidth * .05),
          Container(
            width: constraints.maxWidth * .6,
            height: 10,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: percent / 100,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: constraints.maxWidth * .05),
          Container(
              height: 20,
              width: constraints.maxWidth * .15,
              child: FittedBox(child: Text('${percent.toString()}%'))),
        ],
      );
    });
  }
}
