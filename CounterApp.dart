import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()

{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return MaterialApp(

    title: "Counter App",
    home: MyHomePage() ,
   );
  }


}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageUI();
  }
}
class MyHomePageUI extends State<MyHomePage > {

  int countNumber=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('cOunter App'),),
     body: Center(
       child: Text(countNumber.toString()),
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),
       onPressed: (){
         
         setState(() {
           countNumber = countNumber+1;

         });




       } ,
     ),
   );
  }


}

