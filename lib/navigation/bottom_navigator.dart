import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavigator({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 70,
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.movie_outlined),
          selectedIcon: Icon(Icons.movie_rounded),
          label: 'Movies',
        ),
        NavigationDestination(
          icon: Icon(Icons.local_movies_outlined),
          selectedIcon: Icon(Icons.local_movies_rounded),
          label: 'Series',
        ),
        NavigationDestination(
          icon: Icon(Icons.camera_roll_outlined),
          selectedIcon: Icon(Icons.camera_roll_rounded),
          label: 'Animes',
        ),
      ],
    );
  }
}