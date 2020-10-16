import 'package:flutter/material.dart';

class ForgetPw extends StatefulWidget{
  final String tmp2;

    const ForgetPw({Key key,this.tmp2}): super(key: key);

  @override
  _ForgetPwState createState() => _ForgetPwState();

}

class _ForgetPwState extends State<ForgetPw>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: FlatButton.icon(onPressed:(){goback();}, icon: Icon(Icons.arrow_back), label: Text(widget.tmp2)),
      );
  }

  void goback(){
    Navigator.pop(context);
  }

}