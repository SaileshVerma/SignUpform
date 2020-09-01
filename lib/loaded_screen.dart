import 'package:flutter/material.dart';

class LoadedScreen extends StatelessWidget {
  // final String frname;
  // final String lastname;
  // final String id;
  // final int number;
  // LoadedScreen(this.frname, this.lastname, this.id, this.number);
  @override
  Widget build(BuildContext context) {
   
   final args = ModalRoute.of(context).settings.arguments as Map<String,Object>;
    
     final frname=args["frname"];
  final lastname=args["lastname"];
  final id=args["id"];
  final number=args["number"];

    return Scaffold(
      appBar: AppBar(title: Text("Loaded Details")),
      body: Container(
            
          padding: EdgeInsets.only(top: 60,bottom: 60),
          child: Center(
              child: Column(
            children: <Widget>[


              Text(
          "Your first name :   $frname",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              
              Text(
         "Your last name is :   $lastname",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),


              Text(
                "Your mail id is :   $id",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              
              
              Text(
                'Your Phone number is :   $number',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],


          ))),
    );
  }
}
