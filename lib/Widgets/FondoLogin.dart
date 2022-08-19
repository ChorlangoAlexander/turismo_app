import 'package:flutter/material.dart';

class BackgroundImage extends StatefulWidget {
  BackgroundImage({Key? key}) : super(key: key);

  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login6.jpg'),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.amber.shade200, BlendMode.darken),
        ),
      ),
    );
  }
}

class FondoLista extends StatefulWidget {
  FondoLista({Key? key}) : super(key: key);

  @override
  State<FondoLista> createState() => _FondoListaState();
}

class _FondoListaState extends State<FondoLista> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.jpg'),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.amber.shade200, BlendMode.darken),
        ),
      ),
    );
  }
}
