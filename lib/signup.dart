import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';
import 'main.dart';



void main()=> runApp(const Register());
class Register extends StatelessWidget{
  const Register({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return
      MaterialApp(
        initialRoute: '/first',
        routes: {
          '/': (context)=>const Intropage(),
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

class Signup extends StatefulWidget{
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState()=> _SignupState();
}

class _SignupState extends State<Signup>{
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
                'Sign up',
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
                    hintText: 'Enter name',
                    prefixIcon: Icon(Icons.person),
                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'yourmail@gmail.com',
                    prefixIcon: Icon(Icons.mail),

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
                    hintText: 'password',
                    prefixIcon: Icon(Icons.lock),


                  )
              ),

            ),

            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm password',
                    hintText: 'Confirm Password',
                    prefixIcon: Icon(Icons.lock),

                  )
              ),

            ),

            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/third');
              }, child: const Text('Register')
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Have an account?'),
                TextButton(onPressed: (
                    ){
                  Navigator.pop( context, '/first');
                }, child: const Text('Sign in',
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
