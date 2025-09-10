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

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(MyIcon.hangtu,color: Color.fromRGBO(100, 100, 200, 1)),
          title: Text("首页")
          ),
        Divider(),
        ListTile(
          leading: Icon(MyIcon.guge),
          title: Text("全部订单"),
          trailing: Icon(Icons.arrow_right),)
      ],
    );
  }
}