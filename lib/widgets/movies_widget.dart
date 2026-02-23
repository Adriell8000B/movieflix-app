import 'package:flutter/material.dart';

class MoviesWidget extends StatelessWidget {
  final List<Widget> movies;
  const MoviesWidget({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies,
      ),
    );
  }
}