import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/nba_page.dart';

class Second_page extends StatefulWidget {
  const Second_page({super.key});

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {

  int counter = 0 ;

  void counterUpdate(){
    setState(() {
      counter= counter+ 1;
    });
  }

  void counterNegate(){
    setState(() {
      if(counter>0){
      counter = counter -1;
      }
      else{
        counter =0;
      }
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Second Activity"),
          centerTitle: true,
        ),

        body: Center(
          child: Column(
            children: [
              Text("this is the amount of tmes you clicked"),

              Text(counter.toString(),
              style: TextStyle(fontSize: 40),),

              ElevatedButton(onPressed: counterUpdate, child: Icon(Icons.add)),
              ElevatedButton(onPressed: counterNegate, child: Icon(Icons.horizontal_rule)),

              ElevatedButton(
                child: Text("Go to NBA Activity"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NBA_Page()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}