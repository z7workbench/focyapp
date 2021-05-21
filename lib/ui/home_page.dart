import 'package:flutter/material.dart';
import 'package:focyapp/utils.dart';

class HomePage extends StatefulWidget {
  HomePage({required this.themeColor}) : super();
  final MaterialColor themeColor;

  @override
  State createState() => HomeStage(themeColor: themeColor);
}

class HomeStage extends State<HomePage> {
  HomeStage({required this.themeColor}) : super();
  MaterialColor themeColor;
  DateTime now = DateTime.now();

  getFormattedYearMonth() {
    now = DateTime.now();
  }

  @override
  Widget build(BuildContext context) => Theme(
      data: ThemeData(
          primarySwatch: themeColor,
          iconTheme: IconThemeData(color: themeColor)),
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              child: Text(
                "${getMonth(now.month, context)},${now.toString()}",
                style: TextStyle(fontSize: 20),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(shape: BoxShape.rectangle, color: themeColor),
            ),
            Text("July"),
            Text("July"),
            Text("text")
          ],
        ),
      ));
}
