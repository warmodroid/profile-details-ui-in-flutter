import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: profileView() // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  
  Widget profileView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(height: 50, width: 50 ,child: Icon(Icons.arrow_back_ios, size: 24,color: Colors.black54,), decoration: BoxDecoration(border: Border.all(color: Colors.black54), borderRadius: BorderRadius.all(Radius.circular(10))),),
              Text('Profile Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              Container(height: 24, width: 24)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                child: ClipOval(
                  child: Image.asset('images/girl.jpg', height: 150, width: 150, fit: BoxFit.cover,),
                ),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: Container(height: 40, width: 40,
                  child: Icon(Icons.add_a_photo, color: Colors.white,),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)])
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 25, 20, 4),
                  child: Container(height: 60 ,
                    child: Align( alignment: Alignment.centerLeft ,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Name', style: TextStyle(color: Colors.white70),),
                        )),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)), ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 4),
                  child: Container(height: 60 ,
                    child: Align( alignment: Alignment.centerLeft ,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Email', style: TextStyle(color: Colors.white70),),
                        )),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)), ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 4),
                  child: Container(height: 60 ,
                    child: Align( alignment: Alignment.centerLeft ,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Type something about yourself', style: TextStyle(color: Colors.white70),),
                        )),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)), ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 4),
                  child: Container(height: 60 ,
                    child: Align( alignment: Alignment.centerLeft ,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Address', style: TextStyle(color: Colors.white70),),
                        )),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)), ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 70,
                      width: 200,
                      child: Align(child: Text('Save', style: TextStyle(color: Colors.white70, fontSize: 20),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                        color: Colors.deepOrange
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}


