import 'package:flutter/material.dart';

class MovieCardWidget extends StatelessWidget {
  final String image;
  const MovieCardWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 273,
        width: 163,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(image)),
        ),
      ),
    );
  }
}
