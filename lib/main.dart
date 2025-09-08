import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:Colors.blue
      ),
      home:Scaffold(
        appBar: AppBar(title: const Text("Flutter app"),backgroundColor: Theme.of(context).primaryColor,),
        body: const MyHomePage()
      )
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(
          "你好Flutter", 
          style: TextStyle(
            fontSize: 24,
            color:Theme.of(context).primaryColor
            ,fontWeight:FontWeight.bold)),
            const SizedBox(height:20),
            ElevatedButton(onPressed: (){}, child: const Text("按扭示例"))],
      ));
  }
}