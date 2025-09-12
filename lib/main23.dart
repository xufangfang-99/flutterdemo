import 'package:flutter/material.dart';
import 'package:myproject/res/listData.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
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
        body: const LayoutDemo()
      )
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

List<Widget> _initCardData(){
  var tempList = listData.map((value){
    return Card(
          margin:EdgeInsets.all(10) ,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          clipBehavior: Clip.antiAlias,
          child:Column(
            children: [
                AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network(value["imageUrl"], fit: BoxFit.cover),
                ),
                ListTile(
                  leading: CircleAvatar(radius:20,backgroundImage: NetworkImage(value["imageUrl"]),),
                  title: Text(value["title"], style: TextStyle(color: Color.fromRGBO(100, 100, 100, 1), fontSize: 15),),
                  subtitle: Text(value["author"], style: TextStyle(color: Color.fromRGBO(150, 150, 150, 1), fontSize: 10),),
                ),

            ],
          ),
        );
  });
  
  return tempList.toList();
}
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initCardData(),
    );
  }
}
