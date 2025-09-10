import 'package:flutter/material.dart';
import './res/listData.dart';


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
        body: MyHomePage()
      )
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> list = [];
  MyHomePage({Key? key}) : super(key: key){
    for (var i = 0; i < 30; i++) {
      list.add("我是第$i条数据");
    };
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context,index){
        return ListTile(title: Text(list[index]));
      }
      );
  }
}