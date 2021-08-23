import 'package:flutter/material.dart';
import 'package:share/share.dart';

// ignore: camel_case_types
class gifPage extends StatelessWidget {

  final  Map _gifData;

  gifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.blue[900],
        actions: [
          IconButton(icon: Icon(Icons.share),
          
           onPressed: 
           (){
             Share.share(_gifData["images"]["fixed_height"]["url"]);
           })
        ],
      ),
      backgroundColor: Colors.blue,
      body: Center(child: Image.network(_gifData["images"]["fixed_height"]["url"]),),
    );
  }
}