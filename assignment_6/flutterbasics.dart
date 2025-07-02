
import 'package:flutter/material.dart';
class flutterbasics extends StatefulWidget {
  const flutterbasics({super.key});

  @override
  State<flutterbasics> createState() => _flutterbasicsState();
}

class _flutterbasicsState extends State<flutterbasics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Flutter Basics',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Flutter Basics',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Text('Course description',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Text('Introduction to Flutter',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 20,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(

                      minimumSize: Size(350,60),
                      backgroundColor: Colors.brown

                  ),

                  onPressed: (){
                    Navigator.pushNamed(context, '/mdm');


                  },child: Text('<- Start Course',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),))
            ],

          ),


        ),
      ),

    );
  }
}