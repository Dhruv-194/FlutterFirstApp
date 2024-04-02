import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/second_page.dart';

class First_page extends StatelessWidget {
  const First_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange, 
            title: Text("First Activity"),
            centerTitle: true,
            ),

            body: Center(
              child: ElevatedButton(
                child: Text("Go to Second Activity"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Second_page(),),);
                },
              ),
            ),
    ),
    );
  }
}