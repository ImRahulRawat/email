import 'package:flutter/material.dart';
import 'login.dart';
import 'package:email/Singnup.dart';
import 'homepage.dart';

void main()=>runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
     home: Login(),
      routes:{
       '/signup':(_)=>signup(),
        '/homepage':(_)=>homepage(),
      },
    );
  }
}