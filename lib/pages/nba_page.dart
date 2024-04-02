import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test_app/model/Team.dart';
import 'package:http/http.dart' as http;

class NBA_Page extends StatelessWidget {
   NBA_Page({super.key});


List<Team> teamsList = [];

  Future getTeams() async {
    var response = await http.get(Uri.https('balldontlie.io', 'api/v1/teams'));
    var jsonData = jsonDecode(response.body);

    for(var teams in jsonData['data']){
      final team = Team(abbreviation: teams['abbreviation'], name: teams['city']);
      teamsList.add(team);
    }

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("NBA Page Activity"),
          centerTitle: true,
        ),
      body: FutureBuilder(
        future: getTeams(), 
       builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.done){
            return ListView.builder(
              itemCount: teamsList.length,
              itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    title: Text(teamsList[index].abbreviation),
                    subtitle: Text(teamsList[index].name),
                  ),
                ),
              );
            },);
        }else {
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
       },
       ),
    );
  }
}