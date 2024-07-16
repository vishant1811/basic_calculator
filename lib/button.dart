import 'package:flutter/material.dart';



class Button  extends StatelessWidget {

  final String  tname;
  final Color?  bgcolor;
  final Icon?  icon;
  final TextStyle?  textStyle;
  final VoidCallback?  callBack;


  Button({ required this.tname,
    this.bgcolor =Colors.deepOrangeAccent,
    this.icon,
    this.textStyle,
    this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          callBack!();

    },

        child:icon!=null ? Row(
          children: [
            icon!,
            Text(tname,style: textStyle,)
          ],

        ):Text(tname,style: textStyle,)
    );
  }
}
