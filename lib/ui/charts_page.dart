import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChartsPage extends StatefulWidget{
  @override
  State createState() => ChartsStage();
}

class ChartsStage extends State<ChartsPage> {

  @override
  Widget build(BuildContext context) => Scaffold (
    body: Text("charts"),
  );
}