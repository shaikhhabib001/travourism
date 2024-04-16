import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              elevation: 10,
              child: Image(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
