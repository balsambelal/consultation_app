import 'package:consultation_app/screens/Auth/auth_screen.dart';
import 'package:consultation_app/screens/Auth/siginUp_screen.dart';
import 'package:consultation_app/screens/category.dart';
import 'package:consultation_app/screens/foreign.dart';
import 'package:consultation_app/screens/new_inbox.dart';
import 'package:consultation_app/screens/senders.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: signUp(),
      routes: {
        loginScreen.id: (context) => loginScreen(),
        signUp.id: (context) => signUp(),
        foreign.id:(context) => foreign(),
        newInbox.id:(context) => newInbox(),
        sender.id:(context) => sender(),
        category.id:(context)=>category(),
      },
    );
  }
}


