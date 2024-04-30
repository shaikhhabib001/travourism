import 'package:flutter/material.dart';

class GuidesCard extends StatelessWidget {
  const GuidesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        borderOnForeground: true,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        shadowColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://i.pinimg.com/736x/c9/82/b1/c982b11fb4aaea7ed414a8cf2ada63d3.jpg"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Shaikh Habib",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 10,
                height: 1.1,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
