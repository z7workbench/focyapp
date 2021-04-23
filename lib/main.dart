import 'package:flutter/material.dart';
import 'package:focyapp/charts_page.dart';
import 'package:focyapp/list_page.dart';
import 'package:focyapp/personal_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(title: 'Focy App'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [ListPage(), ChartsPage(), PersonalPage()];
  int current = 0;

  _changePages(int index) {
    if (index != current) {
      setState(() {
        current = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: pages[current],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart), label: "Charts"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me")
        ],
        currentIndex: current,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          _changePages(index);
        },
      ),
    );
  }
}
