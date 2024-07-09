import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 40,
              right: 20,
              bottom: 10,
            ),
            color: Colors.red,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  FontAwesomeIcons.message,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 20,
                    bottom: 20,
                  ),
                  child: ClipOval(
                    child: Image.network(
                      "https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/449841815_2244172639249792_4920559923400231153_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeG3v5GcsDYe57r99yqecrW21qGejknpvCfWoZ6OSem8J30ueMrHfNXWFw184HeN_gP5G8KE_lFpTBfmJEAhtQQQ&_nc_ohc=f_PpyxrF9gEQ7kNvgEl2bWx&_nc_ht=scontent-bkk1-1.xx&oh=00_AYA_De5N5mckmElc5gE5P04Uh8d2BJgSVOFW7O9hcdrj0w&oe=6692E1C0",
                      width: 100,
                    ),
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Chanachai | Lestsongkram"),
                  ],
                )
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
