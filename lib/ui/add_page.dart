import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddPage extends StatefulWidget {
  AddPage({Key key, this.themeColor}) : super(key: key);
  Color themeColor;

  @override
  State createState() => AddStage(themeColor: themeColor);
}

class AddStage extends State<AddPage> {
  AddStage({this.themeColor}) : super();
  Color themeColor;

  @override
  Widget build(BuildContext context) => Theme(
      data: ThemeData(
          primarySwatch: themeColor,
          iconTheme: IconThemeData(color: themeColor)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add"),
          centerTitle: true,
        ),
        body: Text("add"),
      ));
}
