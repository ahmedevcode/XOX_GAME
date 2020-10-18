import 'package:flutter/material.dart';
import 'button.dart';
class GamePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _GamePage();
  }

}

class _GamePage extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          TextField(
          //controller: controller,
        ),

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
                        //btnTemizle();
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

  ButtonTheme buttonTheme(int butonNo){
    return ButtonTheme(
        minWidth: 100,
        height: 100,
        child: RaisedButton(
          child: Text(""/*buttons[butonNo]*/,
            style: TextStyle(
              fontSize: 40,
            ),),
          onPressed: () {}//{buttons[butonNo] = Click(deger);
          // },
        )
    );
  }
}