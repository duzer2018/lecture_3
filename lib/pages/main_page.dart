import 'package:flutter/material.dart';
import 'package:lecture_3/pages/image_details_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final urls = [
    'https://www.anekdot.ru/i/caricatures/normal/19/3/14/1552530970.jpg',
    'https://bmem.ru/wp-content/uploads/2019/09/delayu-rerayt.jpg',
    'https://cdn.fishki.net/upload/post/2017/12/22/2464293/adf0e307054378374c0232cbf954aa29.jpg',
    'https://cdn.fishki.net/upload/post/2017/12/22/2464293/be3e47c515afcf4d6655423a5cc59188.jpg',
    'https://cdn.fishki.net/upload/post/2017/12/22/2464293/f078473570f8d3d770a2c69e39eaf774.jpg',
    'https://trollno.com/wp-content/uploads/2018/06/1-3.jpg',
    'http://mixstuff.ru/wp-content/uploads/2017/06/photoshop-troll-guy-james-fridman-36-5947c1b839b5d__880.jpg',
    'https://i.pinimg.com/originals/36/3a/32/363a328c8a808d8997b5a8b057a8cb18.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    int urlCounter = 1;
    return Scaffold(
        appBar: AppBar(
          title: const Text('title'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(5),
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: <Widget>[
            _getAssetImgDetails('resources/1.jpg', 'asset'),
            _getAssetImgDetails('resources/2.jpg', 'asset'),
            _getAssetImgDetails('resources/3.jpg', 'asset'),
            _getAssetImgDetails('resources/4.jpg', 'asset'),
            _getAssetImgDetails('resources/5.jpg', 'asset'),
            _getAssetImgDetails(
                'http://memesmix.net/media/created/gdedv4.jpg', 'network'
            ),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
            _getAssetImgDetails(urls[urlCounter++ % urls.length], 'network'),
          ],
        )
    );
  }

  Widget _getAssetImgDetails(String imgPath, String typePath){
    return Ink.image(
      image: typePath == 'asset' ? AssetImage(imgPath) : NetworkImage(imgPath),
      fit: BoxFit.cover,
      child: InkWell(onTap: () =>
        Navigator.push<void>(context, MaterialPageRoute(
            builder: (context) =>
                ImageDetailsPage(imagePath: imgPath, typePath: typePath,)
        )),
      ),
    );
  }
}