import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turismo_app/Model/Model.dart';
import 'package:turismo_app/Screens/InventarioScreen.dart';
import 'package:turismo_app/Screens/LoginScreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel usuarioLogeado = UserModel();
  UserModel foto = UserModel();

  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get()
        .then((value) {
      this.usuarioLogeado = UserModel.fromMap(value.data());
      setState(() {});
      FirebaseFirestore.instance.collection('users').doc(user!.photoURL);
    });
  }

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.all(0),
            accountName:
                Text('${usuarioLogeado.nombres} ${usuarioLogeado.apellidos}'),
            /*(user!.displayName!),
            'Alexander Ruben',
              style: TextStyle(color: Colors.black, fontSize: 20),*/

            accountEmail: Text('${usuarioLogeado.email}'),
            /*(user.email!),
            'alexander.chorlango@upec.edu.ec',
              style: TextStyle(
                color: Colors.black,
              ),*/

            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  // user.photoURL!,
                  'https://static.vecteezy.com/system/resources/previews/005/005/788/original/user-icon-in-trendy-flat-style-isolated-on-grey-background-user-symbol-for-your-web-site-design-logo-app-ui-illustration-eps10-free-vector.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(

                //color: Colors.red,

                image: DecorationImage(
              image: AssetImage(
                'assets/login.jpg',
                //'https://media.istockphoto.com/photos/travel-planning-background-picture-id1309040743?b=1&k=20&m=1309040743&s=170667a&w=0&h=eyIzT1oSW2B5gPMPqgybEseIYIUrY96cxPTE_B0ewVs=',
              ),
            )),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuraciones'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Compartir App'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.list_alt_rounded),
            title: Text('Inventario'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InventarioScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favoritos'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Salir'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
