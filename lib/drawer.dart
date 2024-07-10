import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main.dart'; // Assuming main.dart is in the same directory

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Get.back(); // Close the drawer
              Get.to(() => MyHomePage(title: 'Flutter Demo Home Page'));
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Get.back(); // Close the drawer
              Get.to(() => const AboutPage());
            },
          ),
        ],
      ),
    );
  }
}
