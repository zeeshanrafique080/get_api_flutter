import 'dart:convert';

import 'package:fetch_apis/model/postmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:http/http.dart' as http;

Future<List<Shan>> fetchtodo() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos');
  var responce = await http.get(url);
  if (responce.statusCode == 200) {
    List jsonResponse = jsonDecode(responce.body);
    return jsonResponse.map((data) => Shan.fromJson(data)).toList();
  } else {
    throw Exception("Unexpected result");
  }
}

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [],
        ),
      )),
    );
  }
}
