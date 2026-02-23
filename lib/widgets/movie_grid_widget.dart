import 'package:flutter/material.dart';
import 'package:movieflix/widgets/movie_card_widget.dart';

class MovieGridWidget extends StatelessWidget {
  final List<String> moviePosters;

  const MovieGridWidget({super.key, required this.moviePosters});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        itemCount: moviePosters.length, 
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 163,
          mainAxisSpacing: 20,
          crossAxisSpacing: 16,
          childAspectRatio: 163 / 273,
        ),
        itemBuilder: (context, index) {
          return MovieCardWidget(
            image: moviePosters[index],
          );
        },
      ),
    );
  }
}