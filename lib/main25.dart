import 'package:flutter/material.dart';
import 'package:myproject/res/listData.dart';

void main() {
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
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Icon")),
        body: const LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(10), 
      child:  Wrap(
      runSpacing: 10,
      spacing:10,
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      children: [
        Button("第一集", onPressed: () {print('点击第一集');}),
        Button("第二集", onPressed: () {print('点击第二集');}),
        Button("第三集", onPressed: () {print('点击第三集');}),
        Button("第四集", onPressed: () {print('点击第四集');}),
        Button("第五集", onPressed: () {print('点击第五集');}),
        Button("第六集", onPressed: () {print('点击第六集');}),
        Button("第七集", onPressed: () {print('点击第七集');}),
        Button("第八集", onPressed: () {print('点击第八集');}),
        Button("第九集", onPressed: () {print('点击第九集');}),
        Button("第十集", onPressed: () {print('点击第十集');}),
        Button("第十一集", onPressed: () {print('点击第十一集');}),
        Button("第十二集", onPressed: () {print('点击第十二集');}),
        Button("第十三集", onPressed: () {print('点击第十三集');}),
        Button("第十四集", onPressed: () {print('点击第十四集');}),
        Button("第十五集", onPressed: () {print('点击第十五集');}),
        Button("第十六集", onPressed: () {print('点击第十六集');}),
        Button("第十七集", onPressed: () {print('点击第十七集');}),
        Button("第十八集", onPressed: () {print('点击第十八集');}),
      ],
    ));
  }
}


class Button extends StatelessWidget {
  final String text;
  void Function()? onPressed;
  Button(this.text,{Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Color.fromRGBO(100, 100, 100, 1)),
        foregroundColor: WidgetStateProperty.all(Color.fromRGBO(255, 255, 255, 1))
      ),
      onPressed: onPressed, 
      child: Text(text)
      );
  }
}