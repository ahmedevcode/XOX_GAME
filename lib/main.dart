import 'package:flutter/material.dart';
/*
*
*
* creator github.com/erayhamurlu
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
  int deger=3;//tekler x
  String a1="";
  String a2="";
  String a3="";
  String a4="";
  String a5="";
  String a6="";
  String a7="";
  String a8="";
  String a9="";
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
                          child: Text(a1,
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              if(1==(deger%2)){
                                a1="X";
                              }
                              else{
                                a1="O";
                              }
                              deger++;
                            });
                          })
                  ),
                  ButtonTheme(
                      minWidth: 100,
                      height: 100,
                      child: RaisedButton(
                          child: Text(a2,
                            style: TextStyle(
                              fontSize: 40,
                            ),),
                          onPressed: (){
                            setState(() {
                              if(1==(deger%2)){
                                a2="X";
                              }
                              else{
                                a2="O";
                              }
                              deger++;
                            });
                      })),
                  ButtonTheme(
                      minWidth: 100,
                      height: 100,
                      child: RaisedButton(
                          child: Text(a3,
                            style: TextStyle(
                              fontSize: 40,
                            ),),
                          onPressed: (){
                          setState(() {
                          if(1==(deger%2)){
                            a3="X";
                          }
                          else{
                            a3="O";
                          }
                          deger++;
                        });
                      })),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                      minWidth: 100,
                      height: 100,
                      child: RaisedButton(
                          child: Text(a4,
                            style: TextStyle(
                              fontSize: 40,
                            ),),
                          onPressed: (){
                            setState(() {
                              if(1==(deger%2)){
                                a4="X";
                              }
                              else{
                                a4="O";
                              }
                              deger++;
                            });
                          })),
                  ButtonTheme(
                      minWidth: 100,
                      height: 100,
                      child: RaisedButton(
                          child: Text(a5,
                            style: TextStyle(
                              fontSize: 40,
                            ),),
                          onPressed: (){
                            setState(() {
                              if(1==(deger%2)){
                                a5="X";
                              }
                              else{
                                a5="O";
                              }
                              deger++;
                            });
                          })),
                  ButtonTheme(
                      minWidth: 100,
                      height: 100,
                      child: RaisedButton(
                          child: Text(a6,
                            style: TextStyle(
                              fontSize: 40,
                            ),),
                          onPressed: (){
                            setState(() {
                              if(1==(deger%2)){
                                a6="X";
                              }
                              else{
                                a6="O";
                              }
                              deger++;
                            });
                          })),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                      minWidth: 100,
                      height: 100,
                      child: RaisedButton(
                          child: Text(a7,
                            style: TextStyle(
                              fontSize: 40,
                            ),),
                          onPressed: (){
                            setState(() {
                              if(1==(deger%2)){
                                a7="X";
                              }
                              else{
                                a7="O";
                              }
                              deger++;
                            });
                          })),
                  ButtonTheme(
                      minWidth: 100,
                      height: 100,
                      child: RaisedButton(
                          child: Text(a8,
                            style: TextStyle(
                              fontSize: 40,
                            ),),
                          onPressed: (){
                            setState(() {
                              if(1==(deger%2)){
                                a8="X";
                              }
                              else{
                                a8="O";
                              }
                              deger++;
                            });
                          })),
                  ButtonTheme(
                      minWidth: 100,
                      height: 100,
                      child: RaisedButton(
                          child: Text(a9,
                            style: TextStyle(
                              fontSize: 40,
                            ),),
                          onPressed: (){
                            setState(() {
                              if(1==(deger%2)){
                                a9="X";
                              }
                              else{
                                a9="O";
                              }
                              deger++;
                            });
                          })),
                ],),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    buttonColor: Colors.red,
                    child: RaisedButton(
                        child: Text('New Game'),
                        onPressed: (){
                          setState(() {
                            a1="";
                            a2="";
                            a3="";
                            a4="";
                            a5="";
                            a6="";
                            a7="";
                            a8="";
                            a9="";
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
}

