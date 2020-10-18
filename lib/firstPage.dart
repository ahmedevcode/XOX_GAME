import 'package:deneme_xox/gamePage.dart';
import 'package:deneme_xox/userValidator.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FirstPage();
  }

}

class _FirstPage extends State with UserValidationMixin{
  String user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: "Nickname"),
                  validator: validateNickName,
                  onSaved: (String value){
                    user = value;
                  },
                ),
                RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GamePage()));
                }),
              ],
            ),
        ),
      ),
    );
  }
}