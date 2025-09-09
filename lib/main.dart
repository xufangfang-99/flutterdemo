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
    return Column(
      children: [
        SizedBox(height: 40),
        Icon(Icons.home,size: 40,color: Color.fromRGBO(255, 0, 0, 1)),
        SizedBox(height: 40),
        Icon(Icons.settings),
        SizedBox(height: 40),
        Icon(Icons.search, color:Color.fromRGBO(200, 100, 100, 1)),
        SizedBox(height: 40),
        Icon(Icons.personal_injury_outlined),
        SizedBox(height: 40),
        Icon(MyIcon.catGroup),
        SizedBox(height: 40),
        Icon(
          MyIcon.inp, 
          size: 40,
          color: Color.fromRGBO(100, 200, 0, 1)
        ),
        SizedBox(height: 40),
        Icon(
          MyIcon.stone1,
          size: 40,
          color: Color.fromRGBO(200, 100, 0, 1)),
        SizedBox(height: 40),
        Icon(MyIcon.hongheseshengtu,
          size: 40,
          color: Color.fromRGBO(200, 100, 0, 1)),
        SizedBox(height: 20),
        Icon(MyIcon.guge,
          size: 40,
          color: Color.fromRGBO(200, 100, 0, 1)),
        SizedBox(height: 20),
        Icon(MyIcon.hangtu,
          size: 40,
          color: Color.fromRGBO(200, 100, 0, 1)),
        SizedBox(height: 20),
        Icon(MyIcon.gengtucheng,
          size: 40,
          color: Color.fromRGBO(200, 100, 0, 1)),
        SizedBox(height: 20),
        Icon(MyIcon.chonjicheng,
          size: 40,
          color: Color.fromRGBO(200, 100, 0, 1)),
        SizedBox(height: 20),
        Icon(MyIcon.chonjicheng,
          size: 40,
          color: Color.fromRGBO(200, 100, 0, 1)),
        SizedBox(height: 20),
        Icon(MyIcon.shiqi2,
          size: 40,
          color: Color.fromRGBO(100, 0, 100, 1))
      ],
    );
  }
}