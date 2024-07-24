import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: _openDrawer,
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 40,
              right: 20,
              bottom: 10,
            ),
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.settings, color: Colors.white),
                  onPressed: () {
                    Get.to(() => const AboutPage());
                  },
                ),
                const SizedBox(width: 20),
                const Icon(FontAwesomeIcons.cartPlus, color: Colors.white),
                const SizedBox(width: 40),
                const Icon(FontAwesomeIcons.message, color: Colors.white),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 20,
                    bottom: 20,
                  ),
                  child: const Text(
                    "Chanachai | Lestsongkram",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Text('This is the About Page'),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => const AboutPage());
                  },
                  child: const Text('Home'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text('Back'),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the About Page'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.offAll(MyHomePage(title: 'Flutter Demo Home Page'));
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
