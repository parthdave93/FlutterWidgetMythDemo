import 'package:flutter/material.dart';

class MyHomePageStateless extends StatelessWidget {
  String title;

  MyHomePageStateless({@required this.title});

  MyHomePageElement state;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Text("pressed ${index} times"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          index++;
          state.increment();
        },
      ),
    );
  }

  @override
  MyHomePageElement createElement() {
    if (state == null)
      state = MyHomePageElement(this);

    return state;
  }
}

class MyHomePageElement extends StatelessElement {
  MyHomePageElement(StatelessWidget widget) : super(widget);

  @override
  StatelessWidget get widget => super.widget;

  void increment() {
    markNeedsBuild();
  }
}