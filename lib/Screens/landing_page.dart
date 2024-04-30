import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
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
              const Row(
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
              const SizedBox(
                height: 20,
              ),
              //Carousel Slider
              CarouselSlider(
                options: CarouselOptions(
                  autoPlayCurve: Curves.easeInOut,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(
                    milliseconds: 800,
                  ),
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                ),
                items: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        fit: BoxFit.cover,
                        'https://images.unsplash.com/photo-1576786008395-a01f23289d20?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        fit: BoxFit.cover,
                        'https://images.unsplash.com/photo-1599154456742-c82164d2dfb0?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        fit: BoxFit.cover,
                        'https://images.unsplash.com/photo-1567196884944-1b4b8f630560?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  // Add more items as needed
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
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
                        onPressed: () {},
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
                        return GestureDetector(
                          child: AgenciesCard(
                            agencies: agencies,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
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
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
