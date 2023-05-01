import 'package:flutter/material.dart';
import 'package:mini_workout_manager/models/workout.dart';
import 'package:mini_workout_manager/pages/add_new_session_view.dart';
import 'package:mini_workout_manager/pages/workout_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Iterable<Workout> workouts = [];

  late ScrollController _scrollController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today'),
        leading: const Icon(Icons.menu),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_road_rounded),
            label: "New",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          switch (index) {
            case 0:
              if (_selectedIndex == index) {
                _scrollController.animateTo(
                  0.0,
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.decelerate,
                );
              }
              break;
            case 1:
              showDialog(
                context: context,
                builder: (context) => const AddNewSessionView(),
              );
              break;
          }
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Visibility(
        visible: workouts.isNotEmpty,
        replacement: const Center(
          child: Text('Create a new session to see the workouts here'),
        ),
        child: ListView.builder(
          controller: _scrollController,
          itemCount: workouts.length,
          itemBuilder: (context, index) {
            final currentWorkout = workouts.elementAt(index);

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  // boxShadow: [BoxShadow(color: Colors.grey.shade800)],
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WorkoutDetail(
                                workout: currentWorkout,
                              ),
                            ),
                          );
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
      ),
    );
  }
}
