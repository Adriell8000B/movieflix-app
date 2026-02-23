import 'package:flutter/material.dart';
import 'package:movieflix/models/movie_model.dart';
import 'package:movieflix/services/api_service.dart';
import 'package:movieflix/widgets/movie_grid_widget.dart';

class MoviesScreen extends StatefulWidget {

  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  late Future<List<Movie>> _moviesFuture;

  @override
  void initState() {
    super.initState();
    _moviesFuture = ApiService().fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _moviesFuture, 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          else if (snapshot.hasData) {
            // Extract the list of banners from the list of Movie objects
            final movieBanners = snapshot.data!.map((m) => m.movieBanner).toList();
            
            return MovieGridWidget(moviePosters: movieBanners);
          }

          else {
            return const Center(child: Text("No movies found."));
          }
        }
      ),
    );
  }
}