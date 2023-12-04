import 'package:flutter/material.dart';
import 'package:hello_flutter/Demos/listview_demo.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter")
        ),
        body: const ListViewDemo(),
      )
    );
  }
}
