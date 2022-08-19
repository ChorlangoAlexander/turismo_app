import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:turismo_app/Screens/HomeScreen.dart';
import 'package:turismo_app/Screens/InventarioScreen.dart';
import 'package:turismo_app/Screens/LoginScreen.dart';
import 'package:turismo_app/Screens/SignupScreen.dart';
import 'package:turismo_app/Screens/SolicitudArticulo.dart';
import 'package:turismo_app/Screens/UserProfileScreen.dart';
import 'package:turismo_app/Screens/WelcomeScreen.dart';
import 'package:turismo_app/Screens/listaEquipos.dart';
import 'package:turismo_app/Widgets/BottomNavigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: WelcomeScreen(),
    );
  }
}
