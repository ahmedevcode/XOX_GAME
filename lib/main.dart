import 'package:deneme_xox/firstPage.dart';
import 'package:flutter/material.dart';
/*
-----------------------------------
* creator => github.com/erayhamurlu
* ---------------------------------
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: FirstPage(),
    );
  }
}
/*
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var controller = TextEditingController();

  int deger = 3; //tekler x
  var buttons = ['a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7', 'a8', 'a9'];
  _MyHomePageState(){
    for(int i=0;i<9;i++){
      buttons[i]='';
    }
  }
  void btnTemizle(){
    for(int i=0;i<9;i++){
      buttons[i]='';
    }
  }
  */
 /*
  @override
  Widget build(BuildContext context)
  }
  String Click(int a){
    setState(() {
      deger++;
    });
    if(1==(a%2)){
      return "X";
    }
    else{
      return "O";
    }
  }
*/


  
  /*
}*/
