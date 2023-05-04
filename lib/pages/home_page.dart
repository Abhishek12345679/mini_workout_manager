import 'package:flutter/material.dart';
import 'package:mini_workout_manager/pages/add_new_session_view.dart';
import 'package:mini_workout_manager/pages/settings_page.dart';
import 'package:mini_workout_manager/views/workout_session_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final ScrollController _scrollController = ScrollController();
  int _selectedIndex = 0;

  static final workoutSessionView = WorkoutSessionView(
    scrollController: _scrollController,
  );

  // TODO: use the same widget without duplicating it and losing state as a result

  final List<Widget> _pages = [
    workoutSessionView,
    workoutSessionView,
    const SettingsPage()
  ];

  final List<String> _pageTitles = ['Today', 'Today', 'Settings'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Text('Hello'),
      ),
      appBar: AppBar(
        title: Text(_pageTitles.elementAt(_selectedIndex)),
        // leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
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
        onTap: onBottomNavItemTap,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }

  void onBottomNavItemTap(int index) {
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
  }
}
