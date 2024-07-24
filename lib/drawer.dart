import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main.dart';
import 'grid_view_page.dart';
import 'about_page.dart'; // นำเข้า AboutPage class
import 'bottom_sheet_page.dart'; // นำเข้า BottomSheetPage class

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
            leading: Icon(Icons.grid_on),
            title: Text('GridListViews'),
            onTap: () {
              Get.back();
              Get.to(() => GridViewPage());
            },
          ),
          ListTile(
            leading: Icon(Icons.view_list),
            title: Text('BottomSheet'),
            onTap: () {
              Get.back();
              Get.to(() => BottomSheetPage());
            },
          ),
        ],
      ),
    );
  }
}
