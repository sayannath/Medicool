import 'package:flutter/material.dart';

class Dictionary extends StatefulWidget {
  DictionaryState createState() => DictionaryState();
}

class DictionaryState extends State<Dictionary> {
  final double _blur = 30;
  final double _offset = 20;
  final double _top = 30;
  final double _bottom = 30;
  final double _right = 30;
  final double _circularRadius = 20;
  final PageController ctrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection:
          Axis.horizontal, //The pages will be scrollable horizontally.
      controller: ctrl,
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeOutQuint,
          margin: EdgeInsets.only(top: _top, bottom: _bottom, right: _right),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black87,
                  blurRadius: _blur,
                  offset: Offset(_offset, _offset))
            ],
            borderRadius: BorderRadius.circular(_circularRadius),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: new AssetImage("images/1.png"),
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeOutQuint,
          margin: EdgeInsets.only(top: _top, bottom: _bottom, right: _right),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black87,
                  blurRadius: _blur,
                  offset: Offset(_offset, _offset))
            ],
            borderRadius: BorderRadius.circular(_circularRadius),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: new AssetImage("images/2.png"),
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeOutQuint,
          margin: EdgeInsets.only(top: _top, bottom: _bottom, right: _right),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black87,
                  blurRadius: _blur,
                  offset: Offset(_offset, _offset))
            ],
            borderRadius: BorderRadius.circular(_circularRadius),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: new AssetImage("images/3.png"),
            ),
          ),
        ),
      ],
    );
  }
}
