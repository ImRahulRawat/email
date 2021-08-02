import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email/login.dart';
import 'package:email/homepage.dart';

class signup extends StatefulWidget{
  @override
  _signstate createState()=>_signstate();
}

class _signstate extends State<signup>{
  final _auth=FirebaseAuth.instance;
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
                labelText:"Email"
            ),
            onChanged: (value){
              setState(() {
                _email=value;
              });
            },
          ),
          TextField(
              decoration: InputDecoration(
                  labelText:"Password"
              ),
              onChanged: (value){
                setState(() {
                  _password=value;
                });

              },
              obscureText:true
          ),
          FlatButton(onPressed:()async{
            try{
              final newuser=await _auth.createUserWithEmailAndPassword
                (
                  email: _email, password: _password
              );
              if(newuser!=null){
                Navigator.pushNamed(context, '/homepage');
              }
            }
            catch(e){
              print(e);
            }
          }, child: Text("Singn up")),
          SizedBox(height: 10,),

        ],
      ),
    );
  }

}