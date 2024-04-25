import 'package:flutter/material.dart';
import 'package:tms/Screens/landing_page.dart';
import 'package:tms/Screens/messages.dart';
import 'package:tms/Screens/more_items.dart';
import 'package:tms/Screens/notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int currentPageIndex = 0;
  List<Widget> screens = [const LandingPage(), const Notifications(), const Messages(), const MoreItems()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.perm_identity),
        ),
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
      body: screens[currentPageIndex],
    );
  }
}
