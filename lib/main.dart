import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/workout_screen.dart';
import './providers/workout_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx) => WorkoutProvider(),
      child: MaterialApp(
        title: 'Proformance',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          canvasColor: Color.fromRGBO(46, 46, 46, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(color: Colors.white),
                body1: TextStyle(color: Colors.white),
                body2:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
        ),
        home: WorkoutScreen(),
      ),
    );
  }
}
