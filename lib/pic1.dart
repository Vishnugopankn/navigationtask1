import 'package:flutter/material.dart';

class Pics extends StatefulWidget {
  String title;
  String image;
  Pics({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  State<Pics> createState() => _PicsState();
}

class _PicsState extends State<Pics> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          width: double.maxFinite,height: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image.toString()),
                fit: BoxFit.cover,
              )
          ),
        ),

    );
  }
}

