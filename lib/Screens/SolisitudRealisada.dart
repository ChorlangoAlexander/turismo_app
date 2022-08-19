import 'package:flutter/material.dart';

class SoliRealiozada extends StatefulWidget {
  SoliRealiozada({Key? key}) : super(key: key);

  @override
  State<SoliRealiozada> createState() => _SoliRealiozadaState();
}

class _SoliRealiozadaState extends State<SoliRealiozada> {
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
          itemExtent: 200,
          children: [
            _card1(),
            _card2(),
            _card3(),
            _card4(),
            _card5(),
          ],
        ),
      ),
    );
  }
}

Widget _card1() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 50, 50, 0),
          title: Text('Articulo'),
          subtitle: Text('Descripcion Articulo'),
          leading: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47Y5iP2pNjBCniZiH8iUlfZ61HBriEivTKA&usqp=CAU',
            fit: BoxFit.cover,
          ),
        ),
        // Usamos una fila para ordenar los botones del card
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () => {}, child: Icon(Icons.delete)),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _card2() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 50, 50, 0),
          title: Text('Articulo'),
          subtitle: Text('Descripcion Articulo'),
          leading: Image.network(
            'https://www.andesgear.cl/blog/wp-content/uploads/2020/04/Que%CC%81-tipo-de-cuerda-elegir-para-escalar-4.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // Usamos una fila para ordenar los botones del card
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () => {}, child: Icon(Icons.delete)),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _card3() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 50, 50, 0),
          title: Text('Articulo'),
          subtitle: Text('Descripcion Articulo'),
          leading: Image.network(
            'https://media.tacdn.com/media/attractions-splice-spp-674x446/07/33/76/14.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // Usamos una fila para ordenar los botones del card
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () => {}, child: Icon(Icons.delete)),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _card4() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 50, 50, 0),
          title: Text('Articulo'),
          subtitle: Text('Descripcion Articulo'),
          leading: Image.network(
            'https://www.lacumbreonline.cl/media/wysiwyg/equipo_basico.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // Usamos una fila para ordenar los botones del card
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () => {}, child: Icon(Icons.delete)),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _card5() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 50, 50, 0),
          title: Text('Articulo'),
          subtitle: Text('Descripcion Articulo'),
          leading: Image.network(
            'https://www.blogdeaventura.com/wp-content/uploads/2021/04/ctascent_2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // Usamos una fila para ordenar los botones del card
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () => {}, child: Icon(Icons.delete)),
            ],
          ),
        )
      ],
    ),
  );
}
