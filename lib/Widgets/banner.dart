import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {
  final String image;
  const BannerHome({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image(
        height: 200,
        image: NetworkImage(image),
      ),
    );
  }
}
