import 'package:flutter/material.dart';
import 'package:mini_workout_manager/models/workout.dart';
import 'package:mini_workout_manager/pages/workout_detail.dart';

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
      description:
          "Velit id ullamco incididunt et duis fugiat ipsum ex qui cupidatat Lorem. Occaecat est consectetur culpa occaecat voluptate minim cillum sunt consectetur minim et voluptate. Minim aute culpa nulla ea proident mollit irure consequat aute laborum exercitation. Dolore occaecat aute officia ex ad nisi in elit duis id culpa ex eu. Est sit laboris amet fugiat ea proident est. Eu reprehenderit ea labore sunt.",
    ),
    Workout(
      name: "Chest Press",
      imageUrl:
          "https://cdn.oxygenmag.com/wp-content/uploads/2019/12/chest-workout-oxygen-1.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Voluptate dolor esse id irure ullamco consequat proident velit mollit laboris est aute consectetur. Magna velit adipisicing ea quis officia anim. Veniam nisi excepteur id irure velit ipsum Lorem ut nulla sint. Commodo et incididunt tempor esse dolor minim laboris officia dolore.",
    ),
    Workout(
      name: "Bicep Curl",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/tech-school-bicep-curl-1605529894.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=1200:*",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Cillum labore reprehenderit velit sint enim ipsum anim cupidatat enim sint nulla eu ea consectetur. Culpa laborum amet quis non sit sit eu ullamco laboris ad dolore esse ipsum eu. Incididunt ut consectetur voluptate nisi exercitation sint Lorem esse. Excepteur nulla proident non cillum consequat minim ex fugiat ipsum aliqua dolor.",
    ),
    Workout(
      name: "Tricep Extension",
      imageUrl:
          "https://static.strengthlevel.com/images/illustrations/seated-dumbbell-tricep-extension-1000x1000.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Sunt veniam voluptate elit in ut do mollit ut aliquip proident do sint. Anim esse quis ea do deserunt tempor minim nulla sunt. Incididunt esse aute non non id do pariatur est laborum nulla. Cillum mollit aute aliquip sunt duis excepteur eiusmod sunt consectetur sunt. Id incididunt in aute fugiat. Officia dolore ex quis sit in in sunt ex adipisicing.",
    ),
    Workout(
      name: "Leg Extension",
      imageUrl:
          "https://cdn.muscleandstrength.com/sites/default/files/leg-extension.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Do quis id esse officia. Eu in Lorem aute ipsum laboris deserunt labore minim reprehenderit mollit aliquip sunt. Reprehenderit qui aliquip officia exercitation quis eu culpa irure ipsum duis ad minim cupidatat. Anim enim mollit excepteur ut sit fugiat elit quis. Anim ex aute consequat nulla id duis duis magna id id amet incididunt aute id.",
    ),
    Workout(
      name: "Squats",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/squat-jump-squat-178-1653334247.jpg?crop=0.574xw:0.863xh;0.204xw,0.137xh&resize=1200:*",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Id nostrud ipsum do commodo irure elit enim adipisicing esse sunt proident non reprehenderit. Adipisicing qui ex labore tempor. Veniam mollit reprehenderit tempor ex cupidatat quis consectetur voluptate irure. Ullamco dolore adipisicing occaecat sit ex non elit nostrud dolor voluptate pariatur.",
    ),
    Workout(
      name: "Shoulder Press",
      imageUrl:
          "https://static.strengthlevel.com/images/illustrations/dumbbell-shoulder-press-1000x1000.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Et laboris amet voluptate elit consectetur nostrud. Qui commodo anim culpa do elit cupidatat. Dolor mollit ad elit reprehenderit nulla enim consectetur do incididunt labore deserunt. Labore amet consequat est ad id esse. Occaecat dolore reprehenderit aliquip qui laboris culpa aliquip reprehenderit in minim sit culpa dolor. Anim ut nulla excepteur ad sit consequat aliquip nisi est velit aute irure eu. Quis proident non do aliquip fugiat labore est sunt qui laboris Lorem irure.",
    ),
    Workout(
      name: "Chest Press",
      imageUrl:
          "https://cdn.oxygenmag.com/wp-content/uploads/2019/12/chest-workout-oxygen-1.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Duis velit duis elit aute. Adipisicing qui cupidatat pariatur veniam ea. Nulla et duis qui Lorem ea ad enim reprehenderit in sit qui ipsum. Aliquip in aute voluptate duis magna culpa ipsum consequat veniam consequat cupidatat dolor.",
    ),
    Workout(
      name: "Bicep Curl",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/tech-school-bicep-curl-1605529894.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=1200:*",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Nulla anim anim aute commodo dolor dolor sit cupidatat in commodo. Dolor id aliquip deserunt fugiat ut culpa ullamco et cupidatat. Ipsum anim exercitation id et. Dolore dolore cupidatat voluptate duis irure quis.",
    ),
    Workout(
      name: "Tricep Extension",
      imageUrl:
          "https://static.strengthlevel.com/images/illustrations/seated-dumbbell-tricep-extension-1000x1000.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Elit mollit adipisicing velit laborum quis aliquip sunt aliqua. Laborum do laboris tempor sunt anim do voluptate sunt. Ad irure culpa cupidatat sunt do occaecat adipisicing nostrud sit. Lorem eu aute irure qui sit sit voluptate. Cupidatat non anim ex nulla magna. Consectetur non officia dolor aute aliquip sunt exercitation excepteur. Irure minim incididunt cupidatat aute voluptate Lorem commodo cupidatat elit.",
    ),
    Workout(
      name: "Leg Extension",
      imageUrl:
          "https://cdn.muscleandstrength.com/sites/default/files/leg-extension.jpg",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Non Lorem exercitation minim quis dolor eiusmod veniam culpa ex officia proident eiusmod nisi dolor. Aliquip deserunt ex voluptate minim non nisi et irure consectetur est amet. Veniam amet dolor consequat tempor ullamco elit labore qui reprehenderit commodo elit qui id do.",
    ),
    Workout(
      name: "Squats",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/squat-jump-squat-178-1653334247.jpg?crop=0.574xw:0.863xh;0.204xw,0.137xh&resize=1200:*",
      noOfSets: 3,
      noOfReps: 12,
      description:
          "Et Lorem aute do cillum quis eu nostrud commodo sunt tempor officia reprehenderit sint. Non aute sunt dolor Lorem ex voluptate dolor exercitation dolor labore do deserunt labore culpa. Laboris nulla incididunt ex enim. Lorem enim ut velit esse veniam commodo eu excepteur. Cillum et eiusmod excepteur do cupidatat commodo magna ullamco ullamco ad consequat ad aliquip. Sunt eu minim qui labore. Pariatur qui duis sit amet mollit adipisicing tempor culpa pariatur sit eiusmod eu.",
    ),
  ];

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
        onTap: (index) {
          switch (_selectedIndex) {
            case 0:
              if (_selectedIndex == index) {
                _scrollController.animateTo(
                  0.0,
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.decelerate,
                );
              }
              break;
          }
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: ListView.builder(
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
    );
  }
}
