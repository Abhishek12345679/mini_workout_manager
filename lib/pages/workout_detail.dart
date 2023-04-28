import 'package:flutter/material.dart';
import 'package:mini_workout_manager/models/workout.dart';

class WorkoutDetail extends StatelessWidget {
  const WorkoutDetail({super.key, required this.workout});

  final Workout workout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout.name),
      ),
      body: Column(
        children: [
          Image.network(
            workout.imageUrl,
            width: double.infinity,
            height: 500,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: const Text(
              'Sets and Reps',
            ),
            subtitle: Text(
              "${workout.noOfSets} sets of ${workout.noOfReps} reps",
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(workout.description),
          ),
        ],
      ),
    );
  }
}
