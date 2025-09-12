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
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                print("普通按扭");
              },
              child: Text("普通按扭"),
            ),
            TextButton(
              onPressed: () {
                print("文本按扭");
              },
              child: Text("边框按扭"),
            ),
            OutlinedButton(onPressed: null, child: Text("边框按扭")),
            IconButton(
              onPressed: () {
                print("图标按扭");
              },
              icon: Icon(Icons.home),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                print("带图标文字");
              },
              label: Text('按扭'),
              icon: Icon(Icons.search),
            ),
            TextButton.icon(
              onPressed: () {
                print('按扭');
              },
              label: Text("按扭"),
              icon: Icon(Icons.add_rounded),
            ),
            OutlinedButton.icon(
              onPressed: () {
                print("按扭");
              },
              label: Text("按扭"),
              icon: Icon(Icons.info),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              print("--");
            }, child: Text("按扭"), style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blueAccent), foregroundColor: WidgetStateProperty.all(Color.fromRGBO(255, 255, 255, 1))),)
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(onPressed: (){
                print('按扭');
              }, child: Text("按扭"), style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.black), foregroundColor: WidgetStateProperty.all(Colors.white)
              ),),
            )
          ],
        ),
         Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                print('按扭');
              }, child: Text("按扭"), style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.black), foregroundColor: WidgetStateProperty.all(Colors.white)
              )),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10)
                  )
                )
              ),
              onPressed: (){
              print("按扭");
            }, child: Text("按扭")),
            Container(
              height: 80,
              width: 80,
              child: ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  CircleBorder(side: BorderSide(width:10,color: Color.fromRGBO(100, 100, 0, 1)))
                )
              ),
              onPressed: (){
              print("按扭");
            }, child: Text("按扭")),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: ButtonStyle(
                    side: WidgetStateProperty.all(
                      BorderSide(
                        width: 1,color: Color.fromRGBO(200, 0, 0, 1)
                      )
                    )
                  ),
                  onPressed: (){
                  print("--");
                }, child: Text("边框按扭"))
              ],
            )
          ],
        )
      ],
    );
  }
}
