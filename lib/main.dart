import 'package:flutter/material.dart';
import 'package:formpage/loaded_screen.dart';


void main(){
  runApp(Home());
}



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primaryColor:Colors.amber
      ),
      home:SignUpPage(),
   routes: {
     "/loadedscreen":(ctx)=>LoadedScreen(),
   } ,
    );
  }
}


class SignUpPage extends StatefulWidget {
 
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController=TextEditingController();

  final lastnameController=TextEditingController();

   int number;

   String id="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.amber,
   body: 
   Center(
     child: SingleChildScrollView(
            child: Column(children: <Widget>[
           
               
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 25,right:25),
              child: Center(
                
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) ),
                  
                   child: Container(
                      margin: EdgeInsets.only(bottom: 60,top:40,right:15,left: 15),  
         
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
              
                    TextField(
                      
                      decoration: InputDecoration(
                          // enabledBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(30)
                          // ),
                        hintText: "First Name",
                        suffixIcon: FlatButton(onPressed: (){
                            nameController.clear();
                        },
                         child: Icon(Icons.clear))
                        
                      ),
                      
                      controller:nameController ,

                    ),
                    
                    TextField(
                      decoration: InputDecoration(
                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(20)
                        // ),
                        labelText: "Last Name",
                      suffixIcon: FlatButton(onPressed: (){
                        lastnameController.clear();
                      }, child: Icon(Icons.clear))


                      ),

                    controller: lastnameController,
                    ),

                    TextField(
                      decoration: InputDecoration(
                        labelText: "Mail ID"
                      ),
                      onChanged: (val){
                        id=val;
                      },
                    ),


                    TextField(
                      decoration: InputDecoration(
                        labelText: "Phone No."
                      ),
                      keyboardType: TextInputType.number ,
                      onChanged: (val){
                        number=int.parse(val);
                      },
                    ),

                        SizedBox(height: 30,),


                      FlatButton(
                        textColor: Colors.amber,
                     onPressed: (){
                       Navigator.of(context).pushNamed("/loadedscreen",
                       arguments: {"frname":nameController.text,"lastname":lastnameController.text,"id":id,"number":number},
                       );
                   
                   
                     },
                     child:Text("SUBMIT",style: TextStyle(
                       fontSize: 17,
                       fontWeight: FontWeight.bold
                     ),), 
                               
                              )


                ],),
                  ),),
              ),
            )



          ] ,),
     ),
   ) ,   
         
    );
  }
}