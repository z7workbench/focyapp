import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PersonalPage extends StatefulWidget{
  @override
  State createState() => PersonalState();
}

class PersonalState extends State<PersonalPage> {

  @override
  Widget build(BuildContext context) => Scaffold (
    body: Text("personal"),
  );
}