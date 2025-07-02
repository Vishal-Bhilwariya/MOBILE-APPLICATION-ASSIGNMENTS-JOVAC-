
import 'package:flutter/material.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({super.key});

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
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
              Icon(Icons.lock, color: Colors.white, size: 30,),
              SizedBox(height: 10,),
              Text('Welcome Back!', style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),),
              SizedBox(height: 6,),
              Text('login to continue', style: TextStyle(color: Colors.black),),
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
                        label: Text('Email',style: TextStyle(fontSize: 15),),
                        prefixIcon: Icon(Icons.mail),
                        border: OutlineInputBorder(

                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        label: Text('Pssword',style: TextStyle(fontSize: 15),),
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(

                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(300, 60),
                            backgroundColor: Colors.brown
                        ),


                        onPressed: (){

                        }, child: Text('Login',style: TextStyle(fontSize: 20,color: Colors.blue),)),
                    SizedBox(height: 7,),
                    Text('Didn''t have an account? Sign up'),
                    TextButton(onPressed: ()=>Navigator.pushNamed(context, '/createaccount'), child: Text('Signup'))
                    // ElevatedButton(
                    //     onPressed: ()=>Navigator.pushNamed(context, '/createaccount'),
                    //
                    //
                    //
                    // )





                  ],


                ),

              ),

            ],

          ),

        ),



      ),
    );
  }

}
