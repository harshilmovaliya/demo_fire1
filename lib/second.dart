import 'package:demo_fire1/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class second extends StatefulWidget {
  String email;
  String dis;
   second(this.email,this.dis);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: () {
        GoogleSignIn().signOut();
        FirebaseAuth.instance.signOut();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return Home();
        },));
        setState(() {});
      }, icon: Icon(Icons.logout))],),
      body: Container(child: Text("${widget.dis}\n${widget.email}")),
    );
  }
}
