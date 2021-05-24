import 'package:curso_flutterfirebase/pages/home_page.dart';
import 'package:curso_flutterfirebase/useradd_page/user_add.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.pink,
      ),
      home: UserPage(),
      routes: <String, WidgetBuilder>{
        "home" : (BuildContext context) => UserPage(),
        "adduser": (BuildContext context) => AddUser()

      },
    );
  }
}