// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskapp/pages/add.dart';
import 'package:taskapp/pages/history.dart';
import 'package:taskapp/pages/home.dart';
import 'package:taskapp/pages/more.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // selected index
  int _currentIndex = 0;
  // all Tabs Page
  final tabs = [FirstPage(), AddPage(), HistoryPage(), MorePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task List"),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_comment),
              label: 'ADD',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'HISTORY',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: 'MORE',
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            print("----------");
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
