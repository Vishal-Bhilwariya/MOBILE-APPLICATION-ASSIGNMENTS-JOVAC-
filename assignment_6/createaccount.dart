import 'package:flutter/material.dart';

class createaccount extends StatefulWidget {
  const createaccount({super.key});

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.brown,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, color: Colors.white, size: 30,),
                SizedBox(height: 10,),
                Text('Create Account!', style: TextStyle(color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),
                SizedBox(height: 6,),
                Text('Sign up to get started', style: TextStyle(color: Colors.black),),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),


                  ),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          label: Text('full name',style: TextStyle(fontSize: 15),),
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Email',style: TextStyle(fontSize: 15),),
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Pssword',style: TextStyle(fontSize: 15),),
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),


                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Text(' confirm Password',style: TextStyle(fontSize: 15),),
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),


                          ),
                        ),
                      ),
                      SizedBox(height: 7,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(300, 60),
                              backgroundColor: Colors.brown

                          ),

                          onPressed: (){


                          }, child: Text('Sign up',style: TextStyle(fontSize: 20,color: Colors.blue),)),
                      SizedBox(height: 7,),
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/dashboard');
                      }, child: Text('Didn;t have an account?Sign up',style: TextStyle(color: Colors.black,fontSize: 20),))





                    ],

                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }
}