import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70, bottom: 70, right: 30, left: 30),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: new AssetImage("images/logo.jpg"),
        ),
      ),
    );
  }
}
