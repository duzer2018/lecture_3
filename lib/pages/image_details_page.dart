import 'package:flutter/material.dart';

class ImageDetailsPage extends StatelessWidget {

  const ImageDetailsPage({
    Key key, @required this.imagePath, @required this.typePath
  }) : assert(imagePath != null),
        assert(typePath != null),
        super(key: key);

  final String imagePath;
  final String typePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(
            'Details',
                style: TextStyle(fontFamily: 'Chilanka-Regular')
        ),),
        body: Center(
          child: typePath == 'asset'
              ? Image.asset(imagePath)
              : Image.network(imagePath))
    );
  }
}