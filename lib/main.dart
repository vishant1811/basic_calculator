import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:my_app/button.dart';
//import 'package:my_app/intro_page.dart';
import 'package:my_app/login.dart';


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
      home:Login(),
    );
  }
}


class MyHomePage  extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }

}
VISHANT
class MyHomeState extends State<MyHomePage>{
 // var no1=TextEditingController();
var no1=TextEditingController();
var no2=TextEditingController();
var result=" ";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.orange.shade300,
       title: Center(child: Text("SWITCH SCREEN ")),
     ),

      body:Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: no1,
                decoration: InputDecoration(
                  hintText: "Enter first number"
                ),
              keyboardType: TextInputType.number,
              ),
            ),
          

          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: no2,
              decoration: InputDecoration(
                hintText: "Enter Second number"
              ),
            
            keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 50,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                var first=int.parse(no1.text.toString());
                var second=int.parse(no2.text.toString());
                var sum=first+second;
                result="$sum";
                setState(() {

                });
              },
                  child: Text("add")),

              ElevatedButton(onPressed: (){
                var first=int.parse(no1.text.toString());
                var second=int.parse(no2.text.toString());
                var sub=first-second;
                result= "$sub";
                setState(() {

                });

              },
                  child: Text("sub")),

              ElevatedButton(onPressed: (){
                var first=int.parse(no1.text.toString());
                var second=int.parse(no2.text.toString());
                var mult=first*second;
                result="$mult";
                setState(() {

                });
              },

                  child: Text("multiply")),

              ElevatedButton(onPressed: (){
                var first=int.parse(no1.text.toString());
                var second=int.parse(no2.text.toString());
                var div=first/second;
                result="$div";
                setState(() {

                });
              },
                  child: Text("divide"))
            ],
          ),

          Text(result,style: TextStyle(fontSize: 75),),
        ],
      ),
    );
  }
  
}


