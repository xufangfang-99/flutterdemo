import 'package:flutter/material.dart';
import './myIcon.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        )
      ),
      home:Scaffold(
        appBar: AppBar(title: const Text("Flutter Icon")),
        body: const MyHomePage()
      )
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  List<Widget> _initListData(){
      List<Widget> list=[];
      for (var i = 0; i < 20; i++) {
        list.add(ListTile(title: Text("我是${i+1}个列表")));
      }
      return list;
  }


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }
}