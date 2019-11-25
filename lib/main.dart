import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_clone/Premium.dart';
import 'package:spotify_clone/library.dart';
import 'package:spotify_clone/main_page.dart';
import 'package:spotify_clone/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Show(index),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.grey[900],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            showSelectedLabels: true,
            unselectedItemColor: Colors.white54,
            selectedItemColor: Colors.white,
            onTap: ((int x) {
              setState(() {
                index = x;
                Show(index);
              });
            }),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text("Search")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_music), title: Text("Your Library")),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.spotify), title: Text("Premium")),
            ],
          )),
    );
  }
}

Widget Show(int index) {
  switch (index) {
    case 0:
      return MainPage();
      break;
    case 1:
      return Search();
      break;
    case 2:
      return Library();
      break;
    case 3:
      return Premium();
      break;
  }
}
