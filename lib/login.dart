import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class Login  extends StatelessWidget {
  const Login ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Center(child: Text("Welcome to the Login",style: TextStyle(fontWeight:FontWeight.bold),)),
      ),

      body: Column(
        children: [
          
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "enter your login details ",
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "enter your password",
              ),
            obscureText: true,
            
            ),
          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> MyHomePage()));
          },

              child: Text("proceed"))
        ],
      ),
    );
  }
}
