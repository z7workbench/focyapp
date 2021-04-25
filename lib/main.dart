import 'package:flutter/material.dart';
import 'ui/add_page.dart';
import 'ui/charts_page.dart';
import 'ui/list_page.dart';
import 'ui/personal_page.dart';
import 'ui/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focy',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
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
  final colors = [Colors.cyan, Colors.orange, Colors.indigo, Colors.green];
  final pages = [HomePage(), ListPage(), ChartsPage(), PersonalPage()];
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
    return Theme(
      data: ThemeData(
          primarySwatch: colors[current],
          iconTheme: IconThemeData(color: colors[current])),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddPage(
                              themeColor: colors[current],
                            )));
              },
            )
          ],
        ),
        body: pages[current],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                backgroundColor: colors[0],
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: colors[1],
                icon: Icon(Icons.list),
                label: "List"),
            BottomNavigationBarItem(
                backgroundColor: colors[2],
                icon: Icon(Icons.table_chart),
                label: "Charts"),
            BottomNavigationBarItem(
                backgroundColor: colors[3],
                icon: Icon(Icons.person),
                label: "Me")
          ],
          currentIndex: current,
          type: BottomNavigationBarType.shifting,
          onTap: (index) {
            _changePages(index);
          },
        ),
      ),
    );
  }
}
