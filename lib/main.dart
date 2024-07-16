import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:my_app/button.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          displayLarge: const TextStyle(fontSize: 200),
          displaySmall:const  TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage  extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }

}

class MyHomeState extends State<MyHomePage>{
  var no1=TextEditingController();
  var no2=TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
       title: Center(child: Text("MY CALCULATOR ")),
     ),

      body: Column(
        children: [

          TextField(
            keyboardType: TextInputType.number,
            controller:no1,
            decoration: InputDecoration(
              hintText: "ENTER FIRST NUMBER ",
            ),
          ),

          SizedBox(
            height: 20,
          ),

          TextField(
            keyboardType: TextInputType.number,
            controller: no2,
            decoration: InputDecoration(
              hintText: "ENTER SECOND NUMBER",
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                var first =int.parse(no1.text.toString());
                var second  =int.parse(no2.text.toString());
                var sum =first+second;
                result ="  $sum";

                setState(() {

                });

              },

                  child: Text("ADD"),),

              ElevatedButton(onPressed: (){
                var first=int.parse(no1.text.toString());
                var second=int.parse(no2.text.toString());
                var sub=first-second;

                result="$sub";
                setState(() {

                });
              },

                child: Text("SUB"),),

              ElevatedButton(onPressed: (){
                var first=int.parse(no1.text.toString());
                var second=int.parse(no2.text.toString());
                int mul=first*second;
                result="$mul";
                setState(() {
                  
                });
              },

                child: Text("MULTIPLY "),),

              ElevatedButton(onPressed: (){
                var first=int.parse(no1.text.toString());
                var second=int.parse(no2.text.toString());
                var div=first/second;
                result="$div";
                setState(() {

                });
              },

                child: Text("DIVIDE"),)
            ],
          ),

          SizedBox(
            height: 20,
          ),

          Container(child: Text(result ,style: TextStyle(fontSize: 20,color: Colors.deepOrange),))
        ],
      )
    );
  }
  
}


