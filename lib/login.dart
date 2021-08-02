import 'package:flutter/material.dart';
import 'Singnup.dart';

class Login extends StatefulWidget{
  @override
  _loginstate createState()=>_loginstate();
}

class _loginstate extends State<Login>{
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
       FlatButton(onPressed:(){}, child: Text("Singn in")),
       SizedBox(height: 10,),
       FlatButton(onPressed:(){
       Navigator.pushNamed(context,'/signup');
       }, child: Text("Sign up"))
     ],
   ),
    );
  }


}