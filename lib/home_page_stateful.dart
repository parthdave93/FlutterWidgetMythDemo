import 'package:flutter/material.dart';

class MyHomePageStateful extends StatefulWidget {
  final String title;

  const MyHomePageStateful({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageStateful> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Text("pressed ${index} times"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          index++;
          setState(() {

          });
        },
      ),
    );
  }
}