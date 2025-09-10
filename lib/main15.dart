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
        body: const HomePage()
      )
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 3,
//       children: [Icon(MyIcon.baihuimain),Icon(MyIcon.chonjicheng),Icon(MyIcon.catGroup),Icon(MyIcon.gengtucheng),Icon(MyIcon.hangtu),Icon(MyIcon.hongheseshengtu)],
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   List<Widget> _initGridViewData(){
//     List<Widget> tempList=[];
//     for (var i = 0; i < 132; i++) {
//       tempList.add(Container(
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           color: Color.fromRGBO(100, 50, 55, 1)
//         ),
//         child: Text("第${i+1}个元素", style: TextStyle(fontSize: 20,color: Color.fromRGBO(255, 255, 255, 1)),),
//       ));
//     }
//     return tempList;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       padding: EdgeInsets.all(2),
//       crossAxisCount: 3,
//       crossAxisSpacing: 2,
//       mainAxisSpacing: 2,
//       childAspectRatio: 1.6,
//       children: _initGridViewData(),
//       );
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  List<Widget> _initGridViewData(){
    var tempList =listData.map((value){
      return Container(
        decoration: BoxDecoration(border: Border.all(
          color: Color.fromRGBO(200, 200, 200, 1),
          width: 2
        )),
        child: Column(
          children: [
            Image.network(value["imageUrl"],fit:BoxFit.cover),
            SizedBox(height: 10,),
            Text(value["title"])
          ],
        ),
      );
    });
    return tempList.toList();
  }


  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      padding: EdgeInsets.all(2),
      maxCrossAxisExtent: 230,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      childAspectRatio: 1,
      children: _initGridViewData(),
      );
  }
}