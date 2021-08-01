import 'package:flutter/material.dart';
import 'sub/firstPage.dart';
import 'sub/secondPage.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
            appBar: AppBar(
              title: Text('TabBar Example'),
            ),
            body: TabBarView(
              children: <Widget>[FirstApp(), SecondApp()],
              controller: controller,
            ),
            bottomNavigationBar: TabBar(tabs: <Tab>[
              Tab(icon: Icon(Icons.looks_one, color: Colors.blue),),
              Tab(icon: Icon(Icons.looks_two, color: Colors.blue),),
            ], controller: controller,)
        ),
    );
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }
}