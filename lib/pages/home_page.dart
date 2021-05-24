import 'package:curso_flutterfirebase/useradd_page/user_add.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search User"),
        actions: [
        ],
      ),
      drawer: DrawerApp(),
      body: ListView(
        children: [

        ],
      ),
    );
  }
}

class DrawerApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.pink[400],
          ),
          listadrawer()
        ],
      ),
    );
  }
}

class listadrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Text("Ivo", style: TextStyle(color: Colors.white, fontSize: 20)),
          decoration: BoxDecoration(
            color: Colors.white38,
            shape: BoxShape.rectangle
          )
        ),
        ListTile(
          leading: Icon(Icons.home, color: Colors.white,),
          title: Text("Home", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20)),
          onTap: (){
            Navigator.pushNamed(context, "home");
          },
        ),
        ListTile(
          leading: Icon(Icons.person_add, color: Colors.white,),
          title: Text("Register", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20)),
          onTap: (){
            Navigator.pushNamed(context, "adduser");
          },
        )
      ],
    );
  }
}