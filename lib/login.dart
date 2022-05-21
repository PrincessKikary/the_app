import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'signup.dart';
import 'home.dart';


void main()=> runApp(const Register());
class Register extends StatelessWidget{
  const Register({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return
        MaterialApp(
          initialRoute: '/',
          routes: {
            '/first':(context)=>const Login(),
            '/second':(context)=>const Signup(),
            '/third':(context)=> const Home(),
          },

          theme: ThemeData(
            primarySwatch: Colors.teal
          ),
          );

  }

}

class Login extends StatefulWidget{
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState()=> _LoginState();
}

class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
         ListView(
             children:[
               Container(
                 alignment: Alignment.center,
                 padding: const EdgeInsets.all(10.0),
                 child: const Text(
                   'Log In',
                   style: TextStyle(
                       color: Colors.teal,
                       fontWeight: FontWeight.w500,
                       fontSize: 30
                   ),
                 ),
               ),

               Container(
                 padding: const EdgeInsets.all(10),
                 child: const TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'Username',
                       hintText: 'username/email',
                       prefixIcon: Icon(Icons.person),
                     )
                 ),
               ),
               Container(
                 padding: const EdgeInsets.all(10),
                 child: const TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'Password',
                       hintText: 'Password',
                       prefixIcon: Icon(Icons.lock)

                     )
                 ),

               ),

               Container(
                 height: 50,
                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                 child: ElevatedButton(onPressed: (){
                   Navigator.pushNamed(context, '/third');
                 }, child: const Text('Login')
                 ),
               ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Text('New here?'),
                   TextButton(onPressed: (
                       ){
                     Navigator.pushNamed(context, '/second');
                   }, child: const Text('Sign Up',
                     style: TextStyle(
                         fontSize: 15
                     ),
                   )
                   )
                 ],

               )
             ]
         ),
    );
  }
}
