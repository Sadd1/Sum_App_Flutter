import 'package:counter_app/main.dart';
import 'package:counter_app/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SumAPP",
      home: MyHomePage(




      ),
    );
  }




}
class MyHomePage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();

  }

}
class MyHomePageUI extends State<MyHomePage> {



  Map<String,double>FormValue={
    "Num1":0,
    "Num2":0,
    "Num3":0,

  };
  double Sum=0;


  @override
  Widget build(BuildContext context) {




    Myinputonchange(InputKey,InputValue) {
      setState(() {
        FormValue.update(InputKey, (value) => double.parse(InputValue));
      });
    }


    AddAllNumber()

    {
      setState(() {
        Sum=FormValue['Num1']!+FormValue['Num2']!+FormValue['Num3']!;

      });

     }








    return Scaffold(
        appBar: AppBar(title: Text("Add"),),
        body: Padding(
            padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(Sum.toString(),style: HeadTextStyle(),),
              SizedBox(height: 20,),
              TextFormField(onChanged:(value){

                Myinputonchange("Num1",value);
              },
              decoration: AppInputStyle("First Number"),),
              SizedBox(height: 20,),
              TextFormField(onChanged:(value){
                Myinputonchange("Num2",value);


              }, decoration: AppInputStyle("Second Number"),),
              SizedBox(height: 20,),
              TextFormField(onChanged:(value){
                Myinputonchange("Num3",value);


              }, decoration: AppInputStyle("Third Number"),),
              SizedBox(height: 20,),
              Container(

                width: double.infinity,
                child: ElevatedButton(
                style: AppButtonStyle(),
                child: Text('Add'),
                onPressed: (){
                  AddAllNumber();


                },
              ),)


            ],
          ),
        ),
    );

  }

}