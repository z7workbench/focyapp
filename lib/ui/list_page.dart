import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListPage extends StatefulWidget{
  @override
  State createState() => ListStage();
}

class ListStage extends State<ListPage> {

  @override
  Widget build(BuildContext context) => Scaffold (
    body: Text("list"),
  );
}