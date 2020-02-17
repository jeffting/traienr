import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/workout.dart';
import '../providers/workout_provider.dart';
import '../screens/video_screen.dart';

class DrillsList extends StatefulWidget {
  @override
  _DrillsListState createState() => _DrillsListState();
}

class _DrillsListState extends State<DrillsList> {
  void _playVideo(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_) {
        return VideoScreen();
      },
    ));
  }

  Workout workout;
  Widget _drillCard(ctx, index, workouts, selectedDay) {
    return Card(
      color: Color.fromRGBO(69, 69, 69, 1),
      margin: EdgeInsets.all(3),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: ExpansionTile(
          title: Text(
            workouts[selectedDay].drills[index].title,
            style: TextStyle(color: Theme.of(ctx).textTheme.title.color),
          ),
          subtitle: Text(workouts[selectedDay].drills[index].subtitle,
              style: TextStyle(color: Colors.grey)),
          leading: CircleAvatar(
            backgroundColor: Colors.orange[600],
            radius: 30,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: FittedBox(
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                      color: Theme.of(ctx).textTheme.title.color, fontSize: 20),
                ),
              ),
            ),
          ),
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                workouts[selectedDay].drills[index].description,
              ),
            ),
            Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: RaisedButton(
                  child: Text(
                    "Play Training",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.title.color),
                  ),
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                  onPressed: () => _playVideo(context),
                ))
          ],
          trailing: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.green),
              borderRadius: BorderRadius.circular(25),
            ),
            child: IconButton(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.green,
                size: 30,
              ),
              onPressed: () => _playVideo(context),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final workoutProvider = Provider.of<WorkoutProvider>(context);
    int selectedDay = workoutProvider.selectedDay;
    List<Workout> _workouts = workoutProvider.workouts;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _workouts[selectedDay].drills.length,
      padding: EdgeInsets.all(10),
      itemBuilder: (BuildContext ctx, int index) {
        return _drillCard(ctx, index, _workouts, selectedDay);
      },
    );
  }

  void setWorkout() {
    print("h");
  }
}
