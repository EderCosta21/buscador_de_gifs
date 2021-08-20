import 'package:flutter/material.dart';

class gifPage extends StatelessWidget {

  final  Map _gifData;

  gifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: Center(child: Image.network(_gifData["images"]["fixed_height"]["url"]),),
    );
  }
}