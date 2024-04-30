import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  final String text;
  final IconData icon;
  const ServicesCard({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tapped!");
      },
      child: SizedBox(
        width: 100,
        height: 100,
        child: Card(
          borderOnForeground: true,
          elevation: 0.3,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          shadowColor: const Color.fromRGBO(248,248,248, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon,size: 25,),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
