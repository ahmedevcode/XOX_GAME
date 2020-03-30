import 'package:flutter/material.dart';
/*
*
* creator => github.com/erayhamurlu
*
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buttonTheme(0),
                buttonTheme(1),
                buttonTheme(2),
                ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buttonTheme(3),
                buttonTheme(4),
                buttonTheme(5),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buttonTheme(6),
                buttonTheme(7),
                buttonTheme(8),
              ],),
            SizedBox(height: 30,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    buttonColor: Colors.red,
                    child: RaisedButton(
                        child: Text('New Game'),
                        onPressed: () {
                          setState(() {
                            btnTemizle();
                          });
                        }),
                  ),
                ]
            ),
          ],
        ),
      ),
    );
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
  ButtonTheme buttonTheme(int butonNo){
    return ButtonTheme(
        minWidth: 100,
        height: 100,
        child: RaisedButton(
          child: Text(buttons[butonNo],
            style: TextStyle(
              fontSize: 40,
            ),),
          onPressed: () {buttons[butonNo] = Click(deger);},));
  }

}
