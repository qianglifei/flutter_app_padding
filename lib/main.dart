import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PaddingDemo(),
    );
  }
}

class PaddingDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding的用法'),
      ),
      //通过ConstrainedBox来确保Stack占满屏
      body: Padding(
          //上下左右个添加16个像素补白
          padding: EdgeInsets.all(16),
          child: Column(
            //显示指定对齐方式为左对齐，排除对齐干扰
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Hello World'),
              ),
              Padding(
                  //上下各添加8像素对白
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Qianglifei'),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Text('sadfasdfsadf'),
              )
            ],
          ),
      ),
    );
  }

}

