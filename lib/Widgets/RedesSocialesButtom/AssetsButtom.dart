import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetsButtom extends StatelessWidget {
  final String assetName;
  final VoidCallback onPressed;
  const AssetsButtom(
      {Key? key, required this.assetName, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: assetName,
      elevation: 1,
      backgroundColor: Colors.white,
      mini: true,
      child: SvgPicture.asset(
        'assets/icons/$assetName.svg',
        width: 100,
      ),
      onPressed: onPressed,
    );
  }
}
