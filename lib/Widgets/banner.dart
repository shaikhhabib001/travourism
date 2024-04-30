import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BannerHome extends StatelessWidget {
  final String image;
  const BannerHome({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(image),
    );
  }
}
