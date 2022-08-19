import 'package:flutter/material.dart';
import 'package:turismo_app/Widgets/RedesSocialesButtom/AssetsButtom.dart';

class SocialButtom extends StatefulWidget {
  const SocialButtom({Key? key}) : super(key: key);

  //SocialButtom({Key? key}) : super(key: key);

  @override
  State<SocialButtom> createState() => _SocialButtomState();
}

class _SocialButtomState extends State<SocialButtom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AssetsButtom(
          assetName: 'google',
          onPressed: () {},
        ),
        AssetsButtom(
          assetName: 'facebook',
          onPressed: () {},
        ),
      ],
    );
  }
}
