import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:turismo_app/Screens/ActivitiScrens.dart';
import 'package:turismo_app/Screens/EventScreen.dart';
import 'package:turismo_app/Screens/UserProfileScreen.dart';
import 'package:turismo_app/Widgets/NavBar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _caruselImagenes = [
    'https://firebasestorage.googleapis.com/v0/b/proyectoturismo-ae0ea.appspot.com/o/268336499_114045764456108_6205608122600927356_n.jpg?alt=media&token=a68cc479-4949-455e-ae6c-349d988a3890',
    'https://firebasestorage.googleapis.com/v0/b/proyectoturismo-ae0ea.appspot.com/o/270919769_624838025437643_1684272418088979585_n.jpg?alt=media&token=598936b6-f72d-4e48-840b-079bd3df3c1d',
    'https://firebasestorage.googleapis.com/v0/b/proyectoturismo-ae0ea.appspot.com/o/291722446_471054597830293_3595028829948780603_n.png?alt=media&token=0b072661-a0c1-45a7-b293-c81efe5aa9f1',
    'https://firebasestorage.googleapis.com/v0/b/proyectoturismo-ae0ea.appspot.com/o/293607374_802124680807431_5608902234846595064_n.png?alt=media&token=39a36f89-5100-45a3-9a56-379a6519c07d',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              itemCount: _caruselImagenes.length,
              itemBuilder: (context, index, realIndex) {
                final _carusel = _caruselImagenes[index];
                return buildImage(_carusel, index);
              },
              options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                  autoPlayCurve: Curves.easeInOut,
                  autoPlayInterval: Duration(seconds: 4),
                  enlargeCenterPage: true),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Center(
                child: Text(
                  'LO NUEVO',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardHomeImages(),
                    CardHomeImages(),
                    CardHomeImages(),
                    CardHomeImages(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardHomeImages(),
                    CardHomeImages(),
                    CardHomeImages(),
                    CardHomeImages(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardHomeImages(),
                    CardHomeImages(),
                    CardHomeImages(),
                    CardHomeImages(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildImage(String cardImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: SizedBox(
          width: 300.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              cardImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
      );
}

class CardHomeImages extends StatelessWidget {
  const CardHomeImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber.shade200,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: 160,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image(
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/proyectoturismo-ae0ea.appspot.com/o/291722446_471054597830293_3595028829948780603_n.png?alt=media&token=0b072661-a0c1-45a7-b293-c81efe5aa9f1'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3.0),
              child: Text('Somos Turismo'),
            )
          ],
        ),
      ),
    );
  }
}
