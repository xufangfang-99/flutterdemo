// 代码块 importM
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("你好Flutter")),
        body: const MyApp(),
      ),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return const Center(
//       child: Text(
//         "你好Flutter 我是一个自定义组件",
//         textDirection: TextDirection.ltr,
//         style: TextStyle(color: Color.fromRGBO(190, 143, 253, 1), fontSize: 30),
//       ),
//     );
//   }
// }

// 代码块 statelessW
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "你好Flutter 我是一个自定义组件",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Color.fromRGBO(190, 143, 253, 1), fontSize: 30),
      ),
    );
  }
}
