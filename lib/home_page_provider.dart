import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePageProviderStateless extends StatelessWidget {
  final String title;
  MyHomePageProviderStateless({required this.title});
  MyHomePageProvider? _provider;

  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<MyHomePageProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Text("pressed ${_provider?.index} times"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _provider?.increment();
        },
      ),
    );
  }
}

class MyHomePageProvider extends ChangeNotifier{
  int index = 0;

  increment(){
    index++;
    notifyListeners();
  }
}