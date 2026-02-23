import 'dart:convert';

import 'package:movieflix/models/movie_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String endpoint = 'https://movieflix-api-1.onrender.com/api/movies';

  Future<List<Movie>> fetchMovies() async {
    final response = await http.get(Uri.parse(endpoint));

    if(response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      return body.map((dynamic item) => Movie.fromJson(item)).toList(); 
    } else {
      throw Exception("Failed to load movies");
    }
  }
}