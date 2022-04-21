import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;


import '../models/reusable.dart';


import 'chat_screen.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff7C7B9B),

      body: Column(

        children: <Widget>[
         // category_selector(),
          Expanded (
            child: Container(
              // height: 500.0,
              decoration:  const BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
                ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),),
                      child: ReusableChat(name: 'Kapil', text: ('Are you learning?'), time: '5:30',)),
                  Card(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),),
                      child: ReusableChat(name: 'Sameer', text: ('Are you learning?'), time: '5:30',)),
                  Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),),
                      child: ReusableChat(name: 'Prakhar', text: ('Are you learning?'), time: '3:30',)),
                  Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),),
                      child: ReusableChat(name: 'Divyansh', text: ('Used Ninja-bot?'), time: '12:20',)),
                  Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),),
                      child: ReusableChat(name: 'Nishant', text: ('Are you learning?'), time: '5:30',)),
                  Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),),
                      child: ReusableChat(name: 'Arunodaya', text: ('What is your internship update?'), time: '9:30',)),
                  Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),),
                      child: ReusableChat(name: 'Shubham', text: ('Are you learning?'), time: '3:30',)),
                  Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),),
                      child: ReusableChat(name: 'Ashish', text: ('Are you learning?'), time: '5:08',)),
                  Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),),
                      child: ReusableChat(name: 'Ananvya', text: ('Are you learning?'), time: '6:40',)),
                  Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),),
                      child: ReusableChat(name: 'DIvesh', text: ('Are you learning?'), time: '2:30',)),




                  //
                  // ReusableChat(name: 'Kapil', text: ('Have you taken class?'), time: '5:30',),
                  // ReusableChat(name: 'Sameer', text: ('Are you learning?'), time: '5:30',),
                  // ReusableChat(name: 'Kapil', text: ('Have you taken class?'), time: '5:30',),
                  // ReusableChat(name: 'Nishant', text: ('Hi, how are you?'), time: '5:30',),
                  // ReusableChat(name: 'Prakhar', text: ('Hi, how are you?'), time: '5:30',),
                  // ReusableChat(name: 'Divyansh', text: ('Hi, how are you?'), time: '5:30',),
                  // ReusableChat(name: 'Nishant', text: ('Hi, how are you?'), time: '5:30',),

                ],
              ),
            ),
            ),
           ),
        ],
      ),

      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff7C7B9B),



       onPressed: () {   Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatScreen()));},
       child: const Icon(Icons.voice_chat,),
      ),
    );
    
  }
}


