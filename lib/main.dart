import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好Flutter")),
      body: Column(children: const[
        // MyApp(),
        // MyButton(),
        // MyText(),
        // MyImg(),
        // Circular(),
        // ClipImage(),
        // SizedBox(height: 10),
        LocalImage()])
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        alignment: Alignment.center,
        width: 150,
        height: 150,
        // transform: Matrix4.translationValues(0, 0, 0), // 位移
        // transform: Matrix4.rotationZ(0.2), // 旋转
        transform: Matrix4.skewY(0.2),
        decoration: BoxDecoration(color: Color.fromRGBO(100, 100, 200, 0.5),
        border: Border.all(color:Color.fromRGBO(0, 0, 0, 1), width: 2), 
        borderRadius:BorderRadius.circular(75),
        boxShadow:[BoxShadow( color: Color.fromRGBO(0, 0, 255, 0.3),  // 黑色，30% 透明度
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3))],
        gradient:LinearGradient(colors:[Color.fromRGBO(150, 100, 0, 0.5), Color.fromRGBO(0, 0, 150, .5)])),
        child: (Text("你好Flutter",textDirection: TextDirection.ltr, style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 10))),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      margin: EdgeInsets.fromLTRB(0,20,0,0),
      alignment: Alignment(0, 0),
      decoration:BoxDecoration(color:Color.fromRGBO(10, 100, 200, 1),borderRadius: BorderRadius.circular(20)),
      child: (Text('点击确认',textDirection: TextDirection.ltr,style: TextStyle(color:Color.fromRGBO(255, 255, 255, 1),fontSize: 15, fontWeight: FontWeight.w900))),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(color:Color.fromRGBO(255, 208, 0, 0.5)),
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Text(
          "你好我是Flutter",
          textAlign: TextAlign.right,
          maxLines: 1, 
          overflow: TextOverflow.ellipsis, 
          style: TextStyle(
          fontWeight:FontWeight.w900, 
          fontStyle: FontStyle.italic, 
          color: Color.fromRGBO(236, 3, 3, 1),
          letterSpacing: 2,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
          decorationStyle: TextDecorationStyle.dashed
        )
      ),
    );
  }
}

class MyImg extends StatelessWidget {
  const MyImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(color:Color.fromRGBO(100, 150, 0, 1)),
        child: Image.network('https://pics5.baidu.com/feed/cf1b9d16fdfaaf51257311662b88fafef21f7a40.jpeg@f_auto?token=0406687037e8d3c8b6f6e67c23d64716',fit: BoxFit.cover,),
      ),
    );
  }
}

class Circular extends StatelessWidget {
  const Circular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        color:Color.fromRGBO(200,230, 0, 1),
        image:DecorationImage(
          image: NetworkImage('https://pics5.baidu.com/feed/cf1b9d16fdfaaf51257311662b88fafef21f7a40.jpeg@f_auto?token=0406687037e8d3c8b6f6e67c23d64716'),
          fit:BoxFit.fill
      )),
    );
  }
}

// 实现一个圆形图片 使用 CliOval
class ClipImage extends StatelessWidget {
  const ClipImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network('https://pics5.baidu.com/feed/cf1b9d16fdfaaf51257311662b88fafef21f7a40.jpeg@f_auto?token=0406687037e8d3c8b6f6e67c23d64716',
      width:150,
      height:150,
      fit: BoxFit.cover,));
  }
}

//加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration:BoxDecoration(color: Color.fromRGBO(100, 100, 0, 1)),
      child: Image.asset("images/banner.webp", fit: BoxFit.cover,),
    );
  }
}