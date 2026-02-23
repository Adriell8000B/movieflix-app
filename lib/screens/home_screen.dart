import 'package:flutter/material.dart';
import 'package:movieflix/widgets/banner_widget.dart';
import 'package:movieflix/widgets/movie_card_widget.dart';
import 'package:movieflix/widgets/movies_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BannerWidget(),
              const SizedBox(height: 12),
              Divider(thickness: 0.5),
              Text('New', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
              const SizedBox(height: 18),
              MoviesWidget(
                movies: [
                  MovieCardWidget(image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmir-s3-cdn-cf.behance.net%2Fproject_modules%2F1400%2F73a947159978135.63aaa5187b82d.png&f=1&nofb=1&ipt=e1910d1da5832d7a7ced24a4d9f37ab2156814e450c9ceb1ebd5cdac6bff96ad'),
                  MovieCardWidget(image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/20ee8a80-217c-4171-8f05-38529f52ac76/dfmagfu-727144fe-fb62-4a6f-a973-80228baa3c38.jpg/v1/fill/w_600,h_802,q_75,strp/the_super_mario_bros_movie__2023__concept_poster_by_lolthd_dfmagfu-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAyIiwicGF0aCI6IlwvZlwvMjBlZThhODAtMjE3Yy00MTcxLThmMDUtMzg1MjlmNTJhYzc2XC9kZm1hZ2Z1LTcyNzE0NGZlLWZiNjItNGE2Zi1hOTczLTgwMjI4YmFhM2MzOC5qcGciLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.xLPRZlkXFdyJdNXHjdFU17rWygLputJJKd0-91a0H98'),
                  MovieCardWidget(image: 'https://th.bing.com/th/id/OIP.f5lKFnSRqjIiatr4SZT5BgHaLH?pid=ImgDet&rs=1'),
                ],
              ),
              const SizedBox(height: 32),
              Text('Featured', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
              const SizedBox(height: 18),
              MoviesWidget(
                movies: [
                  MovieCardWidget(image: 'https://image.tmdb.org/t/p/w500/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg'),
                  MovieCardWidget(image: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/quiet-place-hulu-halloween-movies-1560525644.jpg?crop=1xw:1xh;center,top&resize=480:*'),
                  MovieCardWidget(image: 'https://th.bing.com/th/id/OIP.Xj10AALvi4hshlEIN1pbCQHaLH?pid=ImgDet&rs=1'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
