import 'package:flutter/material.dart';

class DrawerNavigator extends StatelessWidget {
  const DrawerNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      indicatorColor: Colors.transparent,
      children: [
        const NavigationDrawerDestination(
          icon: Icon(Icons.favorite),
          label: Text('Favorites'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.add),
          label: Text('Add movie'),
        ),
      ],
    );
  }
}
