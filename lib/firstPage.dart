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
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("XOX Game"),),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
            child: Column(
              children: <Widget>[
                buildNickNameField(),
                buildSubmitButton(),
              ],
            ),
        ),
      ),
    );
  }
  Widget buildNickNameField(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Nickname"),
      validator: validateNickName,
      onSaved: (String value){
        user = value;
      },
    );
  }

  Widget buildSubmitButton() {
    return RaisedButton(
        child: Text("Kaydet"),
        onPressed: (){
          if(formKey.currentState.validate()){
            formKey.currentState.save();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GamePage()));
            print(user);
          }
        });
  }
}













