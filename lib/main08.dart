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
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: [
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: Text("一地出现霍乱确诊病例"),
          subtitle: Text("9月4日18时，南通市第三人民医院报告我区发生一例霍乱确诊病例"),
          trailing: Image.network("https://pics5.baidu.com/feed/cf1b9d16fdfaaf51257311662b88fafef21f7a40.jpeg@f_auto?token=0406687037e8d3c8b6f6e67c23d64716"),
        ),
        Divider(),
        ListTile(
          leading: Icon(MyIcon.baihuimain),
          title: Text("报告我区发生一例霍乱确诊"),
          subtitle: Text("我区发生一例霍乱确诊病例我区发生一例霍乱确诊病例"),
        )
      ],
    );
  }
}