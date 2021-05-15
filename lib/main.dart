import 'package:flutter/material.dart';
import 'package:Spotify/pages/HomePage.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:Spotify/pages/Library.dart';
import 'package:Spotify/pages/Search.dart';
import 'package:Spotify/pages/radio.dart';
import 'package:Spotify/pages/browse.dart';
import 'package:Spotify/pages/radio.dart';
import 'package:Spotify/pages/radio.dart';


void main() => runApp(new MaterialApp(
  theme: ThemeData.dark(),
  debugShowCheckedModeBanner: false,
  home: new MyApp(),
));


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 7,
      navigateAfterSeconds: new HomeScreen(),
      image: Image(
        alignment: Alignment.topCenter,
        image: AssetImage('assets/logo.png'),
      ),
      backgroundColor: Colors.black,
      photoSize: 130.0,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  var array = [
    HomePage(),
    Browse(),
    Search(),
    RadioPage(),
    Library(),
  ];

  void onTapTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: array[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.airplay_outlined), label: 'Browse'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.surround_sound_outlined), label: 'Radio'),
          BottomNavigationBarItem(icon: Icon(Icons.all_inbox_sharp), label: 'Your Labary')
        ],
      ),
    );
  }
}

