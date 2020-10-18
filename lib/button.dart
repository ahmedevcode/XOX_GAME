import 'package:flutter/material.dart';

class ButtonBuild {
  Widget buttonBuild(){
    return ButtonTheme(
      minWidth: 100,
      height: 100,
      child: RaisedButton(
        child: Text("", style: TextStyle(fontSize: 40),),
        onPressed: (){}),
    );
  }
}