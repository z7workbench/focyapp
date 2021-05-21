import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:focyapp/constants.dart';
import 'ui/add_page.dart';
import 'ui/charts_page.dart';
import 'ui/list_page.dart';
import 'ui/personal_page.dart';
import 'ui/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('zh', 'CN'),
      ],
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
    HomePage(
      themeColor: colors[0],
    ),
    ListPage(),
    ChartsPage(),
    PersonalPage()
  ];
  var current = 0;
  var _controller = PageController();

  _changePages(int index) {
    if (index < 0) index = 0;
    if (index >= pages.length) index = pages.length;
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
          elevation: 0,
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
        body: PageView(
            onPageChanged: (int index) => _changePages(index),
            reverse: false,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: pages),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                backgroundColor: colors[0],
                icon: Icon(Icons.home),
                label: AppLocalizations.of(context)!.home),
            BottomNavigationBarItem(
                backgroundColor: colors[1],
                icon: Icon(Icons.list),
                label: AppLocalizations.of(context)!.list),
            BottomNavigationBarItem(
                backgroundColor: colors[2],
                icon: Icon(Icons.table_chart),
                label: AppLocalizations.of(context)!.charts),
            BottomNavigationBarItem(
                backgroundColor: colors[3],
                icon: Icon(Icons.person),
                label: AppLocalizations.of(context)!.me)
          ],
          currentIndex: current,
          type: BottomNavigationBarType.shifting,
          onTap: (index) {
            _changePages(index);
            _controller.animateToPage(index,
                duration: Duration(microseconds: 750), curve: Curves.ease);
            print(index);
          },
        ),
      ),
    );
  }
}
