import 'package:flutter/material.dart';

import 'package:vocseekh/View/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja Study',
      home: Scaffold(
         appBar: AppBar(
        toolbarHeight:70,
        centerTitle: false,
        backgroundColor: Color(0xff7C7B9B),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
        title: Center(child: const Text('Ninja Study')),
        actions: [

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
          ),
        ],
        elevation: 0,

      //
      ),
        body:MyHomePage(),
      ),
    );

  }
}