import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddPage extends StatefulWidget{
  @override
  State createState() => AddStage();
}

class AddStage extends State<AddPage> {

  @override
  Widget build(BuildContext context) => Scaffold (
    appBar: AppBar(
      title: Text("Add"),
      centerTitle: true,
    ),
    body: Text("add"),
  );
}