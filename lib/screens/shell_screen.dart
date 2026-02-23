import 'package:flutter/material.dart';
import 'package:movieflix/navigation/bottom_navigator.dart';
import 'package:movieflix/navigation/drawer_navigator.dart';
import 'package:movieflix/screens/animes_screen.dart';
import 'package:movieflix/screens/home_screen.dart';
import 'package:movieflix/screens/movies_screen.dart';
import 'package:movieflix/screens/series_screen.dart';

class ShellScreen extends StatefulWidget {
  const ShellScreen({super.key});

  @override
  State<ShellScreen> createState() => _ShellScreenState();
}

class _ShellScreenState extends State<ShellScreen> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    MoviesScreen(),
    SeriesScreen(),
    AnimesScreen(),
  ];

  void _navigate(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigator(
        currentIndex: currentIndex,
        onTap: _navigate,
      ),
      appBar: AppBar(
        title: const Text('MovieFlix'),
      ),
      drawer: DrawerNavigator(),
      body: SafeArea(
        child: IndexedStack(index: currentIndex, children: _pages),
      ),
    );
  }
}
