import 'package:flutter/material.dart';
import 'package:the_app/signup.dart';
import 'home.dart';
import 'login.dart';
import 'package:flutter/cupertino.dart';
import 'itemDetails.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=>const Intropage(),
        '/first':(context)=>const Login(),
        '/second':(context)=> const Signup(),
        '/third':(context)=> const Home(),
      },
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),

      // home: Intropage(),
    );
  }
}

class Intropage extends StatelessWidget{
  const Intropage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return
        Scaffold(
          body: const Center(
            child: Text('Bonge!',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 75,
            ),),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/first');
            },
            child: const Icon(Icons.arrow_forward_outlined),
          ),
        );
  }
}
