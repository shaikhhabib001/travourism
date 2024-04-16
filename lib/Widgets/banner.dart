import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {
  final String image;
  const BannerHome({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Card(
            
            child: Image(
              height: 200,
              image: NetworkImage(image),
            ),
          ),
        ),
      ],
    );
  }
}
