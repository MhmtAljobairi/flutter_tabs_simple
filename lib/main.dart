import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("My Home Page"),
            bottom: const TabBar(
              tabs: [
                Tab(text: "Tab 1", icon: Icon(Icons.home)),
                Tab(text: "Tab 2", icon: Icon(Icons.explore)),
                Tab(text: "Tab 3", icon: Icon(Icons.home)),
                Tab(text: "Tab 4", icon: Icon(Icons.people))
              ],
            ),
          ),
          body: const TabBarView(children: [
            Icon(Icons.abc),
            Icon(Icons.access_time_filled_sharp),
            Icon(Icons.settings),
            Icon(Icons.arrow_back_ios_new_sharp),
          ]),
        ));
  }
}
