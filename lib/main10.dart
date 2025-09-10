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
    return SizedBox(
      height: 120,
      child: ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      children: [
        Container(
          width: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(100, 100, 0, 1)
          ),
          child: Column(
            children: [
              Container(
                height: 100,
                child: Image.network("https://www.itying.com/images/flutter/1.png", fit: BoxFit.cover,)
              ),
              Text("我是标题", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: 10))],
          ) ,
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(150, 150, 0, 1)
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color:Color.fromRGBO(200, 200, 0, 1)
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(250, 250, 0, 1)
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 100, 100, 1)
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 150, 150, 1)
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 200, 200, 1)
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 250, 250, 1)
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(100, 0, 100, 1)
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(150, 0, 150, 1)
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(200, 0, 200, 1)
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(250, 0, 250, 1)
          ),
        )
      ],
    )
    );
  }
}