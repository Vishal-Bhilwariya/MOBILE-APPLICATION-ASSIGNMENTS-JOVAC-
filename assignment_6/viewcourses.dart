// import 'package:firstfluproject/pages/viewcourses.dart';
import 'package:flutter/material.dart';
class viewcourses extends StatefulWidget {
  const viewcourses({super.key});

  @override
  State<viewcourses> createState() => _viewcoursesState();
}

class _viewcoursesState extends State<viewcourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Courses',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),

      ),
      body: Container(
        child: Column(
          children: [
            Card(
              elevation: 5,
              shadowColor: Colors.black,
              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Colors.black)
              ),

              child: ListTile(
                tileColor: Colors.white70,

                leading: Icon(Icons.book_outlined,color: Colors.brown,size: 40,),
                title: Text('Flutter basics',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
                subtitle: Text('introduction to flutter',style: TextStyle(fontSize: 20),),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){
                  Navigator.pushNamed(context, '/flutterbasics');
                },

              ),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black,
              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Colors.black)
              ),

              child: ListTile(
                tileColor: Colors.white70,
                leading: Icon(Icons.book_outlined,color: Colors.brown,size: 40,),
                title: Text('Dart Language',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                subtitle: Text('Learn dart in depth.',style: TextStyle(fontSize: 20),),
                trailing: Icon(Icons.arrow_forward_ios),

              ),
            ),
          ],

        ),

      ),
    );
  }
}