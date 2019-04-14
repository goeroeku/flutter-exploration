import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  CustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      height: double.infinity,
      width: double.infinity,
      child: RaisedButton(
        color: Colors.white24,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 26.0),
        ),
        onPressed: () {
          print(this.text);
        },
      ),
    );
  }
}
