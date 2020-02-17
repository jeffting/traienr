import './drill.dart';
import './workout.dart';
import 'package:intl/intl.dart';

final DateTime date = DateTime.now();
final String month1 = DateFormat.MMM()
    .format(new DateTime(date.year, date.month - 2, date.day)); // 2 months ago
final String month2 = DateFormat.MMM()
    .format(new DateTime(date.year, date.month - 1, date.day)); // 1 month ago
final String currMonth = DateFormat.MMM()
    .format(new DateTime(date.year, date.month, date.day)); // current month

var percentages = [
  {"percent": 29, "month": month1},
  {"percent": 51, "month": month2},
  {"percent": 21, "month": currMonth}
];
Drill d1 = Drill(
    title: '2 ball bounce',
    description:
        'Practice bouncing 2 basketballs. Dribble both balls simultaneously for 30 seconds. Then switch to an alternate dribble for 30 seconds. Practice crossing the balls.',
    subtitle: '3 minutes',
    isExpanded: false);
Drill d2 = Drill(
    title: 'Layups',
    description:
        'This is the most basic drill in basketball. Run to the basket and bounce it off the backboard into hoop. Jump off left foot if using right hand, right foot if using left hand. If you can\'t get this, give up basketball.',
    subtitle: '25 makes',
    isExpanded: false);
Drill d3 = Drill(
    title: 'Corner 3 point shot',
    description:
        'Shoot 20 3\'s from corner spot. Focus on jumping straight up with shoulders to the basket. Work on being consistent.',
    subtitle: '5 makes in a row',
    isExpanded: false);
Drill d4 = Drill(
    title: 'Foul shot drill',
    description:
        'Shoot foul shots. This is how you get on the team. If you don\'t make your foul shots, you\'ll never make a pickup team and will suck the rest of your life.',
    subtitle: '10 makes in a row',
    isExpanded: false);
Drill d5 = Drill(
    title: 'Donnies',
    description:
        'Yeet the basketball into the hoop. Just skip this one if you ain\'t black. You probably have no hops, therefore will never be able to do this drill.',
    subtitle: '12 yeets',
    isExpanded: false);
Drill d6 = Drill(
    title: 'Run Ladders',
    description:
        'You\'re looking a little tubby. Start at the baseline. Run to the foul line and back. Then to half court and back. Other foul line and back. Other baseline and back. This is 1 rep.',
    subtitle: '5 reps',
    isExpanded: false);

Workout dummy_workout =
    Workout(drills: [d1, d2, d3, d4, d5, d6, d1, d2], date: DateTime.now());

var DUMMY = [
  Workout(drills: [d1, d4], date: DateTime.now().subtract(Duration(days: 2))),
  Workout(
      drills: [d4, d3, d6], date: DateTime.now().subtract(Duration(days: 1))),
  Workout(drills: [d1, d2, d3, d4, d5, d6], date: DateTime.now()),
  Workout(
      drills: [d5, d3, d4, d6, d1],
      date: DateTime.now().add(Duration(days: 1))),
  Workout(
      drills: [d3, d5, d6], date: DateTime.now().subtract(Duration(days: 2)))
];
