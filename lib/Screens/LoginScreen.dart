import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:turismo_app/Screens/ForgotPasswordScreen.dart';
import 'package:turismo_app/Screens/HomeScreen.dart';
import 'package:turismo_app/Screens/SignupScreen.dart';
import 'package:turismo_app/Utils/Texto.dart';
import 'package:turismo_app/Widgets/BackButton.dart';
import 'package:turismo_app/Widgets/BottomNavigation.dart';
import 'package:turismo_app/Widgets/FondoLogin.dart';
import 'package:turismo_app/Widgets/RedesSocialesButtom/SocialButtom.dart';

class LoginScreen extends StatefulWidget {
  //const LoginScreen({Key? key}) : super(key: key);

  //LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
//controlador de edicion
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
//firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://img.freepik.com/foto-gratis/concepto-viaje-plano-completo-puntos-referencia_23-2149153258.jpg?3&w=996&t=st=1660762932~exp=1660763532~hmac=fb9514bf33738aee787b413ae51dd19550d5f85625cfdf27fa39420ea5609d59',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: backButton(context, Colors.black),
                  )
                ],
              ),
              Transform.translate(
                offset: Offset(0.0, -20.0),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'BIENVENIDO DE NUEVO',
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          Text(
                            'Inicie sesión en su cuenta',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          _email(),
                          _password(),
                          _buttonLogin(context),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgotPassword(),
                                  ),
                                );
                              },
                              child: Expanded(
                                child: Text(
                                  '¿Olvidaste tu contraseña?',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '¿No tienes una cuenta?',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RegistroScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Registrate',
                                      style: TextStyle(
                                          color: Colors.amber,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//funcion login
  void inicioSesion(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: 'inicio de sesión correcto'),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => BNavigattor()))
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
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
      child: TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ('Por favor ingrese su correo electrónico');
          }
          // validación de correo electrónico
          if (!RegExp('^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+.-]+.[a-z]')
              .hasMatch(value)) {
            return ('Introduzca un correo electrónico válido');
          }
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          //prefix: Icon(Icons.person),
          hintText: 'Usuario',
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Widget _password() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        autofocus: false,
        controller: passwordController,
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ('La contraseña es requerida para el ingreso');
          }
          if (!regex.hasMatch(value)) {
            return ('Introduzca una contraseña válida (mínimo. 6 caracteres)');
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          // prefix: Icon(Icons.lock),
          hintText: 'Contraseña',
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Widget _buttonLogin(BuildContext context) {
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

          inicioSesion(emailController.text, passwordController.text);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.amber.shade600,
        child: Text(
          'Iniciar Sesión',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
