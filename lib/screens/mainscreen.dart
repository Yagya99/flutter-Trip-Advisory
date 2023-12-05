import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
import 'package:newtravelapp/pages/explore.dart';
import 'package:newtravelapp/pages/newsfeed.dart';
import 'package:newtravelapp/pages/trips.dart';
import 'package:newtravelapp/widgets/navbar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final screen = [
    NewsFeed(),
    Explore(),
    Trips(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Yagya Travel App'),
          actions: [],
        ),
        body: Stack(
          children: [
            screen.elementAt(currentIndex),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Align(
                alignment: const Alignment(0.1, 1.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                  child: BottomNavigationBar(
                    backgroundColor: Colors.white,
                    selectedItemColor: Colors.red,
                    unselectedItemColor: Color.fromRGBO(157, 157, 157, 1),
                    showUnselectedLabels: false,
                    currentIndex: currentIndex,
                    onTap: (index) => setState(() => currentIndex = index),
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Iconsax.home),
                        label: 'NewsFeed',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Ionicons.compass_outline),
                        label: 'Explore',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Iconsax.menu_board),
                        label: 'Trips',
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
