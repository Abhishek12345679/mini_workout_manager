import 'package:flutter/material.dart';
import 'package:mini_workout_manager/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: false,
      ), //material3 has issues with tabbarview
      title: 'MiniWork',
      home: const HomePage(),
    );
  }
}
