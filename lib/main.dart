import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test_app/pages/first_page.dart';
import 'package:flutter_test_app/pages/second_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({super.key});


// List names = ['Dhruv', 'Naman', 'Aakash'];
// void userFunction() {
//   print("User hits!");
// }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
        '/firstpage' : (context) => First_page(),
        '/secondpage' : (context) => Second_page(),
      },
      home: First_page(),

      
       // backgroundColor: Colors.cyan,


        // appBar: AppBar(
        //   backgroundColor: Colors.orange,
        //   title: Text("First App"),
        //   elevation: 10,
        //   centerTitle: true,
        //   leading: Icon(Icons.menu),
        //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))],
        //   ),


        // body: Center(
        //   child: Container(
        //     height: 300,
        //     width: 300,
        //     padding: EdgeInsets.all(25),
        //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.orange),
          
        //     child: Icon(
        //       Icons.favorite,
        //       color: Colors.black,
        //       size: 32,
              
        //     ),
        //   ),
        // ),


        // body: Center(
        //   child: GestureDetector(
        //     onTap: (){Navigator.pushNamed(context, '/firstpage');},
        //    child: Container(
        //       width: 300,
        //       height: 200,
        //       color: Colors.orange,
        //     child : Text("This is text 1"),
        //   ),
        //   )
        // )
      
       
        // )
      
        //   scrollDirection: Axis.vertical,
        //   children: [
          
          
        //    Container(
        //       width: 300,
        //       color: Colors.orange,
        //     //child : Text("This is text 1"),
        //   ),
        
         
         
        //     Container(
        //       width: 300,
        //       color: Colors.orange[400],
        //       //child : Text("This is text 2"),
        //   ),
         
        //   Container(
        //     width: 300,
        //       color: Colors.orange[300],
        //      // child : Text("This is text 3"),
        //   )
        // ],)
    
  
    );
  }
}