import 'package:flutter/material.dart';
import 'package:movieflix/widgets/movie_grid_widget.dart';

class SeriesScreen extends StatelessWidget {
  const SeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MovieGridWidget(
        moviePosters: [
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2Fbf%2F78%2F1b%2Fbf781bb963b29d143d73643cdc822f25.jpg&f=1&nofb=1&ipt=25c374c0660cfbb559e0fb1e876bc14c0ce853439678fd045d803a38092da0f0',
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstatic1.colliderimages.com%2Fwordpress%2Fwp-content%2Fuploads%2F2022%2F12%2Ffjd77vtwqambyvw.jpeg&f=1&nofb=1&ipt=8e2c90fdb844552f6479904e4cffe32c62bf56338d7431ef97800bec9f9b80c5',
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.scified.com%2Fmedia%2Fofficial-fallout-series-poster-157266.jpeg&f=1&nofb=1&ipt=dd9aad2b02ee32d5747451a93dfbf6c40b362800cd5c857fd7c895e68c836e2a',
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapers.com%2Fimages%2Fhd%2Floki-series-poster-marvel-phone-nzh14h01gujkjcmw.jpg&f=1&nofb=1&ipt=3932c9574101c5936671c03a767cb5ee1284c398765ed0a91ddfedb251e30d65',
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BYjgwZWUzMzUtYTFkNi00MzM0LWFkMWUtMDViMjMxNGIxNDUxXkEyXkFqcGc%40._V1_FMjpg_UX1000_.jpg&f=1&nofb=1&ipt=167b7d72fa0aa9123c33f7a338b9a03fb10f0383d729b8c08c3e8ad114bc46c2',
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.shopify.com%2Fs%2Ffiles%2F1%2F0969%2F9128%2Fproducts%2FBreakingBad-BryanCranston-Heisenberg-TVShowPoster9.jpg%3Fv%3D1683604400&f=1&nofb=1&ipt=5f47f618a17c17bd15fd3f86d260738250f10e8c51ba3d7b05b3f6ecef040fb5',
        ],
      ),
    );
  }
}