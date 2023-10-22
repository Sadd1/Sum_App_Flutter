
import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label){
  

  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
    filled: true,
    fillColor: Colors.white,
      border: OutlineInputBorder(),
      labelText: label

    
    
  );

}


TextStyle HeadTextStyle(){

  return TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800
  );
}


ButtonStyle AppButtonStyle(){
  
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(22),
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4))

      )

    );
}