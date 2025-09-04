import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("你好Flutter")),
        body: const Center(
          child: Text(
            "你好Flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Color.fromRGBO(190, 143, 253, 0.8),
              fontSize: 30,
            ),
          ),
        ),
      ),
    ),
  );
}

    // const Center(
    //   child: Text(
    //     "你好Flutter",
    //     textDirection: TextDirection.ltr,
    //     style: TextStyle(color: Color.fromRGBO(194, 231, 7, 1), fontSize: 40),
    //   ),
    // ),