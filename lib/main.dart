import 'package:al_2/ui/exercices/one.dart';
import 'package:al_2/ui/exercices/square_exercice.dart';
import 'package:al_2/ui/exercices/three.dart';
import 'package:al_2/ui/exercices/two.dart';
import 'package:al_2/ui/home_screen/home_screen.dart';
import 'package:al_2/ui/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 24,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //home: One()
      //home: Two()
      home: Three()
      /*home: Home(
        title: 'Un autre titre',
      ) */
    );
  }
}

class Home extends StatefulWidget {
  Home({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  final screens = [
    const HomeScreen(),
    const SettingsScreen(),
  ];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _screenIndex = 0;

  String get title => widget.title;

  List<Widget> get screens => widget.screens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: Text(
          title,
        ),
      ),
      body: screens[_screenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _screenIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _screenIndex = index;
    });
    print(_screenIndex);
  }
}
