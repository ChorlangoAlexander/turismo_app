import 'package:flutter/material.dart';
import 'package:turismo_app/Screens/LoginScreen.dart';
import 'package:turismo_app/Screens/SolicitudArticulo.dart';

class CardsEquipos extends StatefulWidget {
  CardsEquipos({Key? key}) : super(key: key);

  @override
  State<CardsEquipos> createState() => _CardsEquiposState();
}

class _CardsEquiposState extends State<CardsEquipos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47Y5iP2pNjBCniZiH8iUlfZ61HBriEivTKA&usqp=CAU'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.black.withOpacity(0.35),
                child: ListTile(
                  title: Text(
                    'Carpa',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    'Descripción Articulo',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.post_add),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).pushNamed("Solicitud");
                    },
                    iconSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class CardEquipo2 extends StatefulWidget {
  CardEquipo2({Key? key}) : super(key: key);

  @override
  State<CardEquipo2> createState() => _CardEquipo2State();
}

class _CardEquipo2State extends State<CardEquipo2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.andesgear.cl/blog/wp-content/uploads/2020/04/Que%CC%81-tipo-de-cuerda-elegir-para-escalar-4.jpg'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.black.withOpacity(0.35),
                child: ListTile(
                  title: Text(
                    'Titulo',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    'Descripción Articulo',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.post_add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    iconSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class CardEquipo3 extends StatefulWidget {
  CardEquipo3({Key? key}) : super(key: key);

  @override
  State<CardEquipo3> createState() => _CardEquipo3State();
}

class _CardEquipo3State extends State<CardEquipo3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://media.tacdn.com/media/attractions-splice-spp-674x446/07/33/76/14.jpg'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.black.withOpacity(0.35),
                child: ListTile(
                  title: Text(
                    'Titulo',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    'Descripción Articulo',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.post_add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Solicitud(),
                        ),
                      );
                    },
                    iconSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class CardEquipo4 extends StatefulWidget {
  CardEquipo4({Key? key}) : super(key: key);

  @override
  State<CardEquipo4> createState() => _CardEquipo4State();
}

class _CardEquipo4State extends State<CardEquipo4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.lacumbreonline.cl/media/wysiwyg/equipo_basico.jpg'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.black.withOpacity(0.35),
                child: ListTile(
                  title: Text(
                    'Titulo',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    'Descripción Articulo',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.post_add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Solicitud(),
                        ),
                      );
                    },
                    iconSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class CardEquipo5 extends StatefulWidget {
  CardEquipo5({Key? key}) : super(key: key);

  @override
  State<CardEquipo5> createState() => _CardEquipo5State();
}

class _CardEquipo5State extends State<CardEquipo5> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.blogdeaventura.com/wp-content/uploads/2021/04/ctascent_2.jpg'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.black.withOpacity(0.35),
                child: ListTile(
                  title: Text(
                    'Titulo',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    'Descripción Articulo',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: FlatButton(
                    onPressed: () => {},
                    child: Icon(Icons.post_add_rounded),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class CardEquipo6 extends StatefulWidget {
  CardEquipo6({Key? key}) : super(key: key);

  @override
  State<CardEquipo6> createState() => _CardEquipo6State();
}

class _CardEquipo6State extends State<CardEquipo6> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images-na.ssl-images-amazon.com/images/I/61khPTaS4uL._AC_UL604_SR604,400_.jpg'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.black.withOpacity(0.35),
                child: ListTile(
                  title: Text(
                    'Titulo',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    'Descripción Articulo',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.post_add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Solicitud(),
                        ),
                      );
                    },
                    iconSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class CardEquipo7 extends StatefulWidget {
  CardEquipo7({Key? key}) : super(key: key);

  @override
  State<CardEquipo7> createState() => _CardEquipo7State();
}

class _CardEquipo7State extends State<CardEquipo7> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://m.media-amazon.com/images/I/51AXm6DNlAL._AC_SY450_.jpg'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.black.withOpacity(0.35),
                child: ListTile(
                  title: Text(
                    'Titulo',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    'Descripción Articulo',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.post_add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Solicitud(),
                        ),
                      );
                    },
                    iconSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
