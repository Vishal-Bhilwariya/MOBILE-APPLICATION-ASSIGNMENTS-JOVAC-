import 'package:flutter/material.dart';
class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final String url='data:image/png;base64,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';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Dashboard',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back,),

      ),
      body: Container(
        margin: EdgeInsets.only(top: 300),

        child: Column(
          children: [

            Row(



              children: [
                Padding(padding: EdgeInsets.only(left: 5)),
                Text('Welcome Back,',style: TextStyle(fontSize: 25),),


              ],


            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 5)),
                Text('John Doe',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1GnQral4n_10xmSwmfXg1LpAfyks4DvIbDg&s',height: 100,width: 100,)

              ],
            ),
            Column(
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

                    leading: Icon(Icons.person,color: Colors.brown,size: 40,),
                    title: Text('View Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    subtitle: Text('see abd edit your personal information.',style: TextStyle(fontSize: 20),),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){
                      Navigator.pushNamed(context, '/viewprofile');
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

                    leading: Icon(Icons.book,color: Colors.brown,size: 40,),
                    title: Text('View courses',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    subtitle: Text(' complete learning or explore '
                        'new topics.',style: TextStyle(fontSize: 20),),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){
                      Navigator.pushNamed(context, '/viewcourses');
                    },

                  ),
                ),

              ],
            ),








          ],
        ),



      ),
    );
  }
}