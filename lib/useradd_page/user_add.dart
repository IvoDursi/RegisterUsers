import 'package:curso_flutterfirebase/pages/home_page.dart';
import 'package:curso_flutterfirebase/widgets/cardfoto.dart';
import 'package:flutter/material.dart';


class AddUser extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      drawer: DrawerApp(),
      body: UserForm(),
    );
  }
}

class UserForm extends StatelessWidget {

  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical:5,horizontal:10),
            child: CardFoto(),
          ),
          _campodetexto(
            icono: Icon(Icons.person),
            label: "Name",
          ),
          _campodetexto(
            icono: Icon(Icons.person),
            label: "LastName",
          ),
          _campodetexto(
            icono: Icon(Icons.email),
            label: "Email",
            tipodetexto: TextInputType.emailAddress
          ),
          _campodetexto(
            icono: Icon(Icons.lock),
            label: "Password",
            tipodetexto: TextInputType.visiblePassword
          )
        ],
      ),
    );
  }
}

class _campodetexto extends StatelessWidget {

  String label;
  Icon icono;
  TextInputType tipodetexto;

  _campodetexto({
    this.label = "Default",
    this.tipodetexto = TextInputType.text,
    @required this.icono
  });




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:5,horizontal:10),
      child: TextFormField(
        keyboardType: this.tipodetexto,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          labelText: this.label,
          fillColor: Colors.pink,
          prefixIcon: this.icono,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        validator: (value){
          if(value.isEmpty){
            return "Por favor ingrese un valor";
          }
        },
      )
    );
  }
}