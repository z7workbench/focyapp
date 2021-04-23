import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => HomeStage();
}

class HomeStage extends State<HomePage> {

  @override
  Widget build(BuildContext context) => Scaffold (
    body: Text("home"),
  );
}