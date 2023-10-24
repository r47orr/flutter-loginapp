import 'package:flutter/material.dart';

class ExamplePageOne extends StatefulWidget {
  const ExamplePageOne({super.key});

  @override
  State<ExamplePageOne> createState() => _ExamplePageOneState();
}

class _ExamplePageOneState extends State<ExamplePageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blueAccent);
  }
}
