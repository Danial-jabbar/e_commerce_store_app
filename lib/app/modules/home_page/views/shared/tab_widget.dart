

import 'package:flutter/material.dart';

class TabWidgets extends StatelessWidget{
  String? name;
  double? widthOfLine;
   Function()? onTap;
   Color? textColor;
   Color? lineColor;

   TabWidgets({this.onTap, this.lineColor, this.name, this.textColor,this.widthOfLine});

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap: onTap,
     child: Column(
       children: [
         Text('$name', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
         Container(height: 4, width: widthOfLine, color: lineColor,),
       ],
     ),
   );
  }

}