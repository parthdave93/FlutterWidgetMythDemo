import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page_provider.dart';
import 'home_page_stateful.dart';
import 'home_page_stateless.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/provider",
      routes: {
        "/": (context) => MyHomePageStateless(title: 'Flutter Demo Home Page'),
        "/stateful": (context) => MyHomePageStateful(title: 'Flutter Demo Home Page'),
        "/provider": (context) => ChangeNotifierProvider<MyHomePageProvider>(
              create: (_) => MyHomePageProvider(),
              child: MyHomePageProviderStateless(title: 'Flutter Demo Home Page'),
            )
      },
    );
  }
}
