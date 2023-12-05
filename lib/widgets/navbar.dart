import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:newtravelapp/screens/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            onDetailsPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Profile(),
                ),
              );
            },
            accountName: Text('Yagya Jaiswal'),
            accountEmail: Text('1999yagya@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/story/cm1.jpeg'),
            ),
            decoration: const BoxDecoration(color: Colors.blueGrey),
          ),
          ListTile(
            leading: const Icon(Iconsax.profile_circle4),
            title: const Text('Profile'),
            iconColor: Colors.amberAccent,
            onTap: () => print('profile tapped'),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Iconsax.messages),
            title: const Text('Massages'),
            iconColor: Colors.green,
            onTap: () => print('Massages tapped'),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Iconsax.setting),
            title: const Text('Preferences'),
            iconColor: Colors.black54,
            onTap: () => print('Preferences tapped'),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Iconsax.message_question),
            title: const Text('Support'),
            iconColor: Colors.cyan,
            onTap: () => print('Support tapped'),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Iconsax.logout),
            title: const Text('Sign-out'),
            iconColor: Colors.red,
            onTap: () => print('Sign-out tapped'),
          ),
        ],
      ),
    );
  }
}
