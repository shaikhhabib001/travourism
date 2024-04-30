import 'package:flutter/material.dart';

class AgenciesCard extends StatelessWidget {
  final Map agencies;
  const AgenciesCard({super.key, required this.agencies});

  @override
  Widget build(BuildContext context) {
    final String name = agencies['company'];
    final String imageUrl = agencies['logoUrl'];
    return GestureDetector(
      onTap: () {
        
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          color: const Color.fromRGBO(248,248,248, 0),
          child: SizedBox(
            height: double.infinity,
            width: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imageUrl, height: 75, fit: BoxFit.cover,),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class AgenciesCard extends StatelessWidget {
//   final Map agencies;

//   const AgenciesCard({super.key, required this.agencies});

//   @override
//   Widget build(BuildContext context) {
//     final String name = agencies['company'];
//     final String imageUrl = agencies['logoUrl'];
//     return GestureDetector(
//       onTap: () {
        
//       },
//       child: Container(
//         width: 150,
//         height: 150,
//         padding: const EdgeInsets.all(15.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12.5),
//           boxShadow: [
//             BoxShadow(
//                 offset: const Offset(10, 20),
//                 blurRadius: 10,
//                 spreadRadius: 0,
//                 color: Colors.grey.withOpacity(.05)),
//           ],
//         ),
//         child: Column(
//           children: [
//             Image.asset(imageUrl, height: 59, fit: BoxFit.cover),
//             const Spacer(),
//             Text(name,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 )),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(
//               subtitle,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                   color: Colors.grey,
//                   fontWeight: FontWeight.normal,
//                   fontSize: 12),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


