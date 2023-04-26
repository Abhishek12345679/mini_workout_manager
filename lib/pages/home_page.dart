import 'package:flutter/material.dart';
import 'package:mini_workout_manager/models/workout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Iterable<Workout> workouts = const [
    Workout(
      name: "Shoulder Press",
      imageUrl:
          "https://static.strengthlevel.com/images/illustrations/dumbbell-shoulder-press-1000x1000.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Chest Press",
      imageUrl:
          "https://cdn.oxygenmag.com/wp-content/uploads/2019/12/chest-workout-oxygen-1.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Bicep Curl",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/tech-school-bicep-curl-1605529894.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=1200:*",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Tricep Extension",
      imageUrl:
          "https://static.strengthlevel.com/images/illustrations/seated-dumbbell-tricep-extension-1000x1000.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Leg Extension",
      imageUrl:
          "https://cdn.muscleandstrength.com/sites/default/files/leg-extension.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Squats",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/squat-jump-squat-178-1653334247.jpg?crop=0.574xw:0.863xh;0.204xw,0.137xh&resize=1200:*",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Shoulder Press",
      imageUrl:
          "https://static.strengthlevel.com/images/illustrations/dumbbell-shoulder-press-1000x1000.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Chest Press",
      imageUrl:
          "https://cdn.oxygenmag.com/wp-content/uploads/2019/12/chest-workout-oxygen-1.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Bicep Curl",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/tech-school-bicep-curl-1605529894.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=1200:*",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Tricep Extension",
      imageUrl:
          "https://static.strengthlevel.com/images/illustrations/seated-dumbbell-tricep-extension-1000x1000.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Leg Extension",
      imageUrl:
          "https://cdn.muscleandstrength.com/sites/default/files/leg-extension.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
    Workout(
      name: "Squats",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/squat-jump-squat-178-1653334247.jpg?crop=0.574xw:0.863xh;0.204xw,0.137xh&resize=1200:*",
      noOfSets: 3,
      noOfReps: 12,
      description: "",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today'),
        leading: const Icon(Icons.menu),
      ),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          final currentWorkout = workouts.elementAt(index);

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.deepOrange.shade100,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      child: Image.network(
                        currentWorkout.imageUrl,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      onTap: () {},
                      title: Text(currentWorkout.name),
                      subtitle: Text(
                        "${currentWorkout.noOfSets} sets of ${currentWorkout.noOfReps} reps",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
