import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.themeColor}) : super(key: key);
  Color themeColor;

  @override
  State createState() => HomeStage(themeColor: themeColor);
}

class HomeStage extends State<HomePage> {
  HomeStage({this.themeColor}) : super();
  Color themeColor;

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
                "July",
                style: TextStyle(fontSize: 20),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: themeColor),
            ),
            Text("July"),
            Text("July"),
            Text("text")
          ],
        ),
      ));
}
