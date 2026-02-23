import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimage.tmdb.org%2Ft%2Fp%2Foriginal%2F5w2pb3dxENKRl8VA7ADUTZ1cEOz.jpg&f=1&nofb=1&ipt=065071491754539dffb516db6d2e8f526fd80f4422c460a274038a506fcf9815',
          ),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
