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
   MyHomePage({Key? key}) : super(key: key){
    print(listData);
   }
  // 第一种方法
  // List<Widget> _initListData(){
  //   List<Widget> tempList = [];
  //   for (var i = 0; i < listData.length; i++) {
  //     tempList.add(ListTile(
  //       title: Text(listData[i]["title"]), 
  //       subtitle: Text(listData[i]["author"]),
  //     leading: Image.network(listData[i]['imageUrl'])));
  //   }
  //   return tempList;
  // }

  // 第二种方法
  List<Widget> _initListData(){
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]));
    });
    print(tempList);
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: _initListData());
  }
}