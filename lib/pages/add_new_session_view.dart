import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mini_workout_manager/constants.dart';
import 'package:mini_workout_manager/models/exercise.dart';
import 'package:mini_workout_manager/utilities/base_http_client.dart';

class AddNewSessionView extends StatefulWidget {
  const AddNewSessionView({super.key});

  @override
  State<AddNewSessionView> createState() => _AddNewSessionViewState();
}

class _AddNewSessionViewState extends State<AddNewSessionView> {
  late final TextEditingController _searchController;
  List<Exercise> _excercises = [];
  bool isLoading = false;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  Future<List<Exercise>> getExercises(String name) async {
    try {
      setState(() {
        isLoading = true;
      });
      final exercisesResponse = await BaseHTTPClient().get(
        '$baseExcercisesUrl/exercises/name/$name',
        {
          'X-RapidAPI-Key':
              '2531e17d44msh9d2ab5d56e35d54p19c6d0jsnedfcf4d56313',
          'X-RapidAPI-Host': 'exercisedb.p.rapidapi.com'
        },
      );
      final exercisesJSON =
          (json.decode(exercisesResponse) as List).cast<Map<String, dynamic>>();

      final exercises = exercisesJSON.map((e) => Exercise.fromMap(e)).toList();
      setState(() {
        isLoading = false;
      });
      return exercises;
    } catch (err) {
      setState(() {
        isLoading = false;
      });
      rethrow;
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('New Workout'),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TextField(
                autocorrect: false,
                controller: _searchController,
                decoration: InputDecoration(
                  fillColor: Colors.white10,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.all(10.0),
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Enter Workout Name',
                ),
                onEditingComplete: () async {
                  final exercises = await getExercises(_searchController.text);
                  setState(() {
                    _excercises = exercises;
                  });
                },
              ),
              Visibility(
                visible: isLoading,
                replacement: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: ListView.builder(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      itemCount: _excercises.length,
                      itemBuilder: (context, index) {
                        final currentExercise = _excercises.elementAt(index);
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey.shade900),
                            child: ListTile(
                              leading: Image.network(
                                currentExercise.gifUrl,
                              ),
                              title: Text(currentExercise.name),
                              minVerticalPadding: 12,
                              subtitle: Text(
                                  '${currentExercise.target} | ${currentExercise.bodyPart} | ${currentExercise.equipment}'),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                child: const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
