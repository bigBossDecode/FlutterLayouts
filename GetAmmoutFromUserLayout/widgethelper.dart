import 'package:flutter/material.dart';

class WidgetHelper {

  CustomButton ({required VoidCallback onClick, required String text}){
    return InkWell(
      onTap: onClick,
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 50,
        child: Text(text, style:const TextStyle(fontSize: 35, color: Colors.white,),),
      ),
    );
  }
}