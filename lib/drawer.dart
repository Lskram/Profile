// drawer.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main.dart';
import 'grid_view_page.dart'; // Import the new page

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
              Get.back();
              Get.to(() => MyHomePage(title: 'Flutter Demo Home Page'));
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Get.back();
              Get.to(() => const AboutPage());
            },
          ),
          ListTile(
            leading: Icon(Icons.grid_view),
            title: Text('Grid View'),
            onTap: () {
              Get.back();
              Get.to(() => GridViewPage()); // Navigate to GridViewPage
            },
          ),
        ],
      ),
    );
  }
}
