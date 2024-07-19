import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class Intropage  extends StatelessWidget {
  const Intropage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("welcome here"),

      ),

      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=> MyHomePage() ,));
            },
              child: Text("click here ")),
        ],
      )
    );
  }
}
