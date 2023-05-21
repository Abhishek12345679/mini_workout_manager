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
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    WorkoutSessionView(),
    WorkoutSessionView(),
    SettingsPage()
  ];

  final List<String> _pageTitles = ['weeerk', 'Home', 'Settings'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitles.elementAt(_selectedIndex)),
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
