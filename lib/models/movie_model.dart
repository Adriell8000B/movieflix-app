class Movie {
  final String movieBanner;
  final String rating;
  final String name;
  final int year;
  final String genre;

  Movie({
    required this.movieBanner,
    required this.rating,
    required this.name,
    required this.year,
    required this.genre,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      movieBanner: json['movie_banner'] ?? '',
      rating: json['movie_rating'] ?? 'N/A',
      name: json['movie_name'] ?? 'Unknown',
      year: json['movie_year'] ?? '',
      genre: json['movie_genre'] ?? '',
    );
  }
}