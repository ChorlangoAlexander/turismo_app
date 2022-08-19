import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:turismo_app/Screens/ActivitiScrens.dart';
import 'package:turismo_app/Screens/EventScreen.dart';
import 'package:turismo_app/Screens/HomeScreen.dart';
import 'package:turismo_app/Screens/UserProfileScreen.dart';
import 'package:turismo_app/Widgets/NavBar.dart';

class BNavigattor extends StatefulWidget {
  BNavigattor({Key? key}) : super(key: key);

  @override
  State<BNavigattor> createState() => _BNavigattorState();
}

class _BNavigattorState extends State<BNavigattor> {
  int _paginaActual = 0;
  List<Widget> _paginas = [
    HomeScreen(),
    EventScreen(),
    ActivitiScrenns(),

    //UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
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
      body: _paginas[_paginaActual],
      bottomNavigationBar: Container(
        child: CurvedNavigationBar(
          color: Colors.amber.shade200,
          backgroundColor: Colors.transparent,
          index: _paginaActual,
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          items: [
            Icon(Icons.home, size: 30, color: Colors.grey),
            Icon(Icons.calendar_month_outlined, size: 30, color: Colors.grey),
            Icon(Icons.notifications, size: 30, color: Colors.grey),
            //Icon(Icons.person, size: 30, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
