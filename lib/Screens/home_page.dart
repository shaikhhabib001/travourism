import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tms/Widgets/banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.perm_identity),
        title: const Text("Travourism"),
        centerTitle: true,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_outlined)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_outline_rounded),
            ),
            label: 'Messages',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.more_horiz_rounded,
            ),
            label: 'More',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.abc),
                      Icon(Icons.abc_outlined),
                      Icon(Icons.abc_rounded),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.abc),
                      Icon(Icons.abc_outlined),
                      Icon(Icons.abc_rounded),
                    ],
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const BannerHome(
                    image:
                        "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
