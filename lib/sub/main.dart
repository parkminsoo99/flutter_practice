import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : Text('TabBar EX'),
      ),
      body : bottomNavigationBar:
    );
  }
}
class _MyHomePageState extends State<MyHomePage>{
  with SingleTickerProviderStateMixin{

  }
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
}