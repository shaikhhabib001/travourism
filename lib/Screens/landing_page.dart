import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tms/Screens/agencies.dart';
import 'package:tms/Widgets/agencies_card.dart';
import 'package:tms/Widgets/guides_card.dart';
import 'package:tms/Widgets/services_card.dart';
import '../Data/agencies_global_variable.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) => SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Carousel Slider
            SizedBox(
              width: double.infinity,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(
                    milliseconds: 1500,
                  ),
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                ),
                items: [
                  Image.network(
                      'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png'),
                  Image.network(
                      'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png'),
                  Image.network(
                      'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png'),
                  // Add more items as needed
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Agencies",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          
                        },
                        child: const Text("See more"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 159,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: agenciesList.length,
                      itemBuilder: (context, index) {
                        final Map agencies = agenciesList[index];
                        return AgenciesCard(
                          agencies: agencies,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Guides",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See more"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  // GuidesCard(),
                  SizedBox(
                    height: 268,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const GuidesCard();
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(color: Colors.transparent),
                  ],
                ),
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ServicesCard(
                          icon: Icons.airline_seat_flat,
                          text: "Airline",
                        ),
                        ServicesCard(
                          icon: Icons.train,
                          text: "Train",
                        ),
                        ServicesCard(
                          icon: Icons.bus_alert_rounded,
                          text: "Bus",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ServicesCard(
                          icon: Icons.event,
                          text: "Events",
                        ),
                        ServicesCard(
                          icon: Icons.hotel,
                          text: "Hotel",
                        ),
                        ServicesCard(
                          icon: Icons.more_horiz,
                          text: "More",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
