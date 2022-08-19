import 'package:flutter/material.dart';
import 'package:turismo_app/Widgets/FondoLogin.dart';
import 'package:turismo_app/Widgets/TargetasEquposWidget.dart/CardsWidgets.dart';

class ListaEquipos extends StatefulWidget {
  ListaEquipos({Key? key}) : super(key: key);

  @override
  State<ListaEquipos> createState() => _ListaEquiposState();
}

class _ListaEquiposState extends State<ListaEquipos> {
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://img.freepik.com/vector-gratis/fondo-plano-aventura-montanas_23-2149045825.jpg?w=826&t=st=1660712180~exp=1660712780~hmac=322deec071fb0aeed5310929d899b331b23c7d049a0cfb4734918940e690ca06'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
          ),
        ),
        child: ListWheelScrollView(
          itemExtent: 250,
          children: [
            CardsEquipos(),
            CardEquipo2(),
            CardEquipo3(),
            CardEquipo4(),
            CardEquipo5(),
            CardEquipo6(),
            CardEquipo7()
          ],
        ),
      ),
    );
  }
}
