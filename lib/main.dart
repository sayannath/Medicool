import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:app/home.dart';
import 'package:app/dictionary.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int currentPage = 0;
  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      //switch-case
      case 0:
        return Home();
      case 1:
        return Dictionary();
        break;
      default:
        return Home(); //Default page is set to be Home Page
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color(0xFF005BAA)),
      home: Scaffold(
        backgroundColor: const Color(0xFFE4E4E4),
        appBar: AppBar(
          elevation: defaultTargetPlatform ==
                  TargetPlatform.android //Provides elevation to  the AppBar.
              ? 10.0
              : 0.0,
          title: Text("MEDICOOL"),
        ),
        body: callPage(currentPage),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (value) {
            currentPage = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text('Dictionary of Diseases'),
            ),
          ],
        ),
      ),
    );
  }
}
