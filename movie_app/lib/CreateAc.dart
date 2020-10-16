import 'package:flutter/material.dart';

class CreateAc extends StatefulWidget{
  final String tmp; //must be final

  const CreateAc({Key key,this.tmp}): super(key: key);

  @override
  _CreateAcState createState() => _CreateAcState();

}

class _CreateAcState extends State<CreateAc>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: FlatButton.icon(onPressed:(){goback();}, icon: Icon(Icons.arrow_back), label: Text(widget.tmp))
      );
  }

  void goback(){
    Navigator.pop(context);
  }
}