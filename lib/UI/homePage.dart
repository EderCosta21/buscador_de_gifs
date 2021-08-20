import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<Map> getGifs() async {
    String search;
    int ofSet = 0;

    // ignore: unused_local_variable
    http.Response response;

    if (search == null) {
      var url = Uri.parse(
          'https://api.giphy.com/v1/gifs/trending?api_key=wT1PbgHKFg7wzS2nWMjDTdnPTTy2vCZX&limit=25&rating=g'); // url trending
      response = await http.get(url);
    } else {
      // ignore: unnecessary_brace_in_string_interps
      var urlSearch = Uri.parse(
          'https://api.giphy.com/v1/gifs/search?api_key=wT1PbgHKFg7wzS2nWMjDTdnPTTy2vCZX&q=$search&limit=25&offset=$ofSet&rating=g&lang=pt'); // url search
      response = await http.get(urlSearch);
    }

    return jsonDecode(response.body);
  }

  @override
  void initState() {
    super.initState();
    getGifs().then((value) => {print(value)});
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
