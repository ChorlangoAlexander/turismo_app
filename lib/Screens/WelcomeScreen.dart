import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:turismo_app/Screens/LoginScreen.dart';
import 'package:turismo_app/Screens/SignupScreen.dart';
import 'package:turismo_app/Services/Auth.dart';
import 'package:turismo_app/Widgets/BottomNavigation.dart';
import 'package:turismo_app/Widgets/Custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  //const WelcomeScreen({Key? key}) : super(key: key);
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://memes.co.in/wallpapers/uploads/1625904154.jpg'),
                colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'BIENVENIDOS A TURISMO APP INVENTAIOS Y MÁS...',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 53.0),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30.0),
                child: Text(
                  'BIENVENIDOS A TURISMO APP XXXXXX XXXXX XXXXXX XXXXX XXX',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0),
                ),
              ),
              Container(
                width: 350,
                height: 45,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
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
                    )),
              ),
              Container(
                width: 350,
                height: 45,
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                    onPressed: () async {
                      await signInWithGoogle(context: context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BNavigattor()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Conecta con Google',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
