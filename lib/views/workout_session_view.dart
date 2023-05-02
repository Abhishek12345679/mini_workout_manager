import 'package:flutter/material.dart';
import 'package:mini_workout_manager/models/workout.dart';
import 'package:mini_workout_manager/pages/workout_detail.dart';

class WorkoutSessionView extends StatefulWidget {
  const WorkoutSessionView({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  State<WorkoutSessionView> createState() => _WorkoutSessionViewState();
}

class _WorkoutSessionViewState extends State<WorkoutSessionView> {
  final Iterable<Workout> workouts = const [
    Workout(
      name: 'Dumbbell Curls',
      imageUrl: 'http://d205bpvrqc9yn1.cloudfront.net/0285.gif',
      noOfSets: 4,
      noOfReps: 12,
      description:
          'Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.',
    ),
    Workout(
      name: 'Dumbbell Curls',
      imageUrl: 'http://d205bpvrqc9yn1.cloudfront.net/0285.gif',
      noOfSets: 4,
      noOfReps: 12,
      description:
          'Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.',
    ),
    Workout(
      name: 'Dumbbell Curls',
      imageUrl: 'http://d205bpvrqc9yn1.cloudfront.net/0285.gif',
      noOfSets: 4,
      noOfReps: 12,
      description:
          'Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.',
    ),
    Workout(
      name: 'Dumbbell Curls',
      imageUrl: 'http://d205bpvrqc9yn1.cloudfront.net/0285.gif',
      noOfSets: 4,
      noOfReps: 12,
      description:
          'Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.',
    ),
    Workout(
      name: 'Dumbbell Curls',
      imageUrl: 'http://d205bpvrqc9yn1.cloudfront.net/0285.gif',
      noOfSets: 4,
      noOfReps: 12,
      description:
          'Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.',
    ),
    Workout(
      name: 'Dumbbell Curls',
      imageUrl: 'http://d205bpvrqc9yn1.cloudfront.net/0285.gif',
      noOfSets: 4,
      noOfReps: 12,
      description:
          'Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.',
    ),
    Workout(
      name: 'Dumbbell Curls',
      imageUrl: 'http://d205bpvrqc9yn1.cloudfront.net/0285.gif',
      noOfSets: 4,
      noOfReps: 12,
      description:
          'Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.',
    ),
    Workout(
      name: 'Dumbbell Curls',
      imageUrl: 'http://d205bpvrqc9yn1.cloudfront.net/0285.gif',
      noOfSets: 4,
      noOfReps: 12,
      description:
          'Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.',
    ),
    Workout(
      name: 'Dumbbell Curls',
      imageUrl: 'http://d205bpvrqc9yn1.cloudfront.net/0285.gif',
      noOfSets: 4,
      noOfReps: 12,
      description:
          'Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.',
    ),
    Workout(
      name: 'Dumbbell Curls',
      imageUrl: 'http://d205bpvrqc9yn1.cloudfront.net/0285.gif',
      noOfSets: 4,
      noOfReps: 12,
      description:
          'Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.Reprehenderit culpa quis ex occaecat mollit exercitation sit est. Lorem ullamco fugiat dolore et quis labore cupidatat mollit deserunt eiusmod cillum sit consequat. Commodo eiusmod reprehenderit anim ex ullamco reprehenderit officia anim sint nisi. Quis id laboris aliquip et incididunt esse labore minim veniam anim dolor ut. Nisi pariatur amet magna cupidatat nulla consectetur fugiat id adipisicing nisi mollit minim. Magna cillum pariatur consequat do commodo ut culpa aliqua id nisi consequat est cupidatat deserunt.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: workouts.isNotEmpty,
      replacement: const Center(
        child: Text('Create a new session to see the workouts here'),
      ),
      child: ListView.builder(
        controller: widget.scrollController,
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          final currentWorkout = workouts.elementAt(index);

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8.0),
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
                      onTap: () {
                        Navigator.pop(context);
                      },
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
