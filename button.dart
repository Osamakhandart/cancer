import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String Buttontext;
  Function onpressed;
  @override
  Button({@required this.Buttontext, this.onpressed});
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onpressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: EdgeInsets.all(0.0),
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple[500],
                Colors.deepPurpleAccent[100],
                Colors.deepPurpleAccent[100],
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30.0)),
        child: Container(
          constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
          alignment: Alignment.center,
          child: Text(
            Buttontext,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class TextFeildown extends StatelessWidget {
  String hint;
  bool pass;
  Widget Sufix;
  TextFeildown({
    this.pass = false,
    this.Sufix,
    @required this.hint,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: TextField(
        decoration: InputDecoration(
          suffix: Sufix,
          hintText: hint,
        ),
        obscureText: pass,
        onChanged: (value) {},
        cursorHeight: 35,
      ),
    );
  }
}
