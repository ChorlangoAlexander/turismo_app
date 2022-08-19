import 'package:flutter/material.dart';

class Solicitud extends StatefulWidget {
  Solicitud({Key? key}) : super(key: key);

  @override
  State<Solicitud> createState() => _SolicitudState();
}

class _SolicitudState extends State<Solicitud> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login2.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.amber.shade100, BlendMode.darken)),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _nombreArticulo(),
                  _cantidad(),
                  _fecha(),
                  _decripcion(),
                  _buttonSend(context),
                ],
              )),
        ),
      ),
    );
  }
}

Widget _nombreArticulo() {
  return Container(
    margin: EdgeInsets.only(top: 40),
    padding: EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      autofocus: false,
      //controller: emailController,
      keyboardType: TextInputType.emailAddress,

      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        //prefix: Icon(Icons.person),
        hintText: 'Usuario',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget _cantidad() {
  return Container(
    margin: EdgeInsets.only(top: 15),
    padding: EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      autofocus: false,
      //controller: emailController,
      keyboardType: TextInputType.emailAddress,

      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        //prefix: Icon(Icons.person),
        hintText: 'Usuario',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget _email() {
  return Container(
    margin: EdgeInsets.only(top: 15),
    padding: EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      autofocus: false,
      //controller: emailController,
      keyboardType: TextInputType.emailAddress,

      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        //prefix: Icon(Icons.person),
        hintText: 'Usuario',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget _fecha() {
  return Container(
    margin: EdgeInsets.only(top: 15),
    padding: EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      autofocus: false,
      //controller: emailController,
      keyboardType: TextInputType.emailAddress,

      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        //prefix: Icon(Icons.person),
        hintText: 'Usuario',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget _decripcion() {
  return Container(
    margin: EdgeInsets.only(top: 15),
    padding: EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      autofocus: false,
      //controller: emailController,
      keyboardType: TextInputType.emailAddress,

      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        //prefix: Icon(Icons.person),
        hintText: 'Usuario',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget _buttonSend(BuildContext context) {
  return Container(
    width: 350,
    height: 45,
    margin: EdgeInsets.only(top: 35),
    child: RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.amber.shade600,
      child: Text(
        'Enviar Formulario',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    ),
  );
}
