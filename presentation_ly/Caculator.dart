

import 'package:flutter/material.dart';
 
import '../presentation_ly/operations.dart' as cl;
String txtbutn="";
Color txtcol=Colors.black,bkcol=Colors.black;

class Caculator extends StatefulWidget {


  @override
  State<Caculator> createState() => _CaculatorState();
}
class _CaculatorState extends State<Caculator> {
cl.operations op=new cl.operations();
 Widget buttonform(String txtbutn,Color txtcol,Color bkcol){

if(txtbutn!='0'){
   return   Container(
     child: RawMaterialButton(
       shape: CircleBorder(),
       fillColor: bkcol,
       padding: EdgeInsets.all(5),
       onPressed: ()=>
     setState(() =>   op .buttonPressed(txtbutn))
       ,
         child: Text('$txtbutn',style: TextStyle(fontSize: 30,color:txtcol),),
     ),
   );}
else {
  return Container(
    child: RawMaterialButton(
      shape: StadiumBorder(),
      fillColor: bkcol,
      padding: EdgeInsets.fromLTRB(15, 15, 165, 15),
      onPressed: () {
       setState(() =>   op .buttonPressed(txtbutn));
      },
      child: Text('$txtbutn', style: TextStyle(fontSize: 30, color: txtcol),),
    ),
  );
}}

    @override
  Widget build(BuildContext context) {
     return buttonform( txtbutn, txtcol, bkcol);}
}