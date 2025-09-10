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

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     padding: EdgeInsets.all(20),
  //     child: Text(
  //     "你好flutter"
  //   ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Expanded(
            flex:1,
            child:IconContainer(Icons.set_meal, color: Color.fromRGBO(150, 150, 0, 1))
            ),
          IconContainer(Icons.search, color: Color.fromRGBO(50, 50, 0, 1))
        ],
    );
  }
}

// 自定义IconContainer
class IconContainer extends StatelessWidget {
  final Color color;
  final IconData icon;
  const IconContainer(this.icon,{super.key, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
      child: Icon(icon, color: Color.fromRGBO(255, 255, 255, 1)),
    );
  }
}