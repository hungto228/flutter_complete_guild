import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guild/model/photo_model.dart';
import 'package:flutter_complete_guild/widget/image_list.dart';

//import 'package:http/http.dart' as http;
import 'package:http/http.dart' show get;

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

var URL = "https://jsonplaceholder.typicode.com/photos/";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int couter = 0;
  List<PhotosModel> photos = [];

  Future<void> fetchImage() async {
    couter++;
    var response = await get(Uri.parse(URL + "$couter"));
    var photoModel = PhotosModel.fromJson(jsonDecode(response.body));
    setState(() {
      photos.add(photoModel);
    });
    // if (response.statusCode == 200) {
    //   print(response.body);
    // } else {
    //   print(response.statusCode);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageList(photos),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: fetchImage,
      ),
      appBar: AppBar(
        title: Text("httprequeest"),
      ),
    );
  }
}
