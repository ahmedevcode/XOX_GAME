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
  void btn_temizle(){
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
                ButtonTheme(
                    minWidth: 100,
                    height: 100,
                    child: RaisedButton(
                        child: Text(buttons[0],
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      onPressed: () {buttons[0] = Click(deger);},)
                ),
                ButtonTheme(
                    minWidth: 100,
                    height: 100,
                    child: RaisedButton(
                        child: Text(buttons[1],
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      onPressed: () {buttons[1] = Click(deger);},)),
                ButtonTheme(
                    minWidth: 100,
                    height: 100,
                    child: RaisedButton(
                        child: Text(buttons[2],
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      onPressed: () {buttons[2] = Click(deger);},)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                    minWidth: 100,
                    height: 100,
                    child: RaisedButton(
                        child: Text(buttons[3],
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      onPressed: () {buttons[3] = Click(deger);},)),
                ButtonTheme(
                    minWidth: 100,
                    height: 100,
                    child: RaisedButton(
                        child: Text(buttons[4],
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      onPressed: () {buttons[4] = Click(deger);},)),
                ButtonTheme(
                    minWidth: 100,
                    height: 100,
                    child: RaisedButton(
                        child: Text(buttons[5],
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      onPressed: () {buttons[5] = Click(deger);},)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                    minWidth: 100,
                    height: 100,
                    child: RaisedButton(
                        child: Text(buttons[6],
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      onPressed: () {buttons[6] = Click(deger);},
                    )),
                ButtonTheme(
                    minWidth: 100,
                    height: 100,
                    child: RaisedButton(
                        child: Text(buttons[7],
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      onPressed: () {buttons[7] = Click(deger);},)),
                ButtonTheme(
                    minWidth: 100,
                    height: 100,
                    child: RaisedButton(
                        child: Text(buttons[8],
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      onPressed: () {buttons[8] = Click(deger);},)),
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
                            btn_temizle();
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
}
