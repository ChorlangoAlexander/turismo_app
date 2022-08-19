import 'package:flutter/material.dart';
import 'package:turismo_app/Widgets/BackButton.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                'HAS OLVIDADO TU CONTRASEÑA',
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Por favor, introduzca su dirección de correo electrónico. Recibirá un enlace para crear una nueva contraseña por correo electrónico.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              _email(),
              _buttonForgotPassword(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _email() {
  return Container(
    margin: EdgeInsets.only(top: 40),
    padding: EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(30),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Tu correo electrónico',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget _buttonForgotPassword(BuildContext context) {
  return Container(
    width: 350,
    height: 45,
    margin: EdgeInsets.only(top: 35),
    child: RaisedButton(
        onPressed: () {
          /* Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BNavigattor(),
            ),
          );*/
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.amber.shade600,
        child: Text(
          'Enviar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        )),
  );
}
