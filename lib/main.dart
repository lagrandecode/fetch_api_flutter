import 'dart:convert';

import 'package:fetch_api/model/postmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  // fetching api
  //declare the api site
  var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
  //converting the postmodel to list



  Future<PostModel> getApi()async{
    //declaring the response
    final response = await http.get(url);

    //declare the data
    

    //check if the response is ok
    if(response.statusCode == 200){


    }else{
      throw Exception('Failed to load album');
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

        )
        // child: FutureBuilder(
        //   future: getApi(),
        //   builder: (context, snapshot){
        //     if(!snapshot.hasData){
        //       return const Center(
        //         child: CircularProgressIndicator());
        //     }
        //     return ListView.builder(
        //         itemCount:
        //         itemBuilder: (_, __)=>
        //             Container(
        //               height: 50,
        //               width: MediaQuery.of(context).size.width,
        //               child: Text(postList[__].name.toString(), style: TextStyle(fontSize: 20, color: Colors.black),),
        //
        //             )
        //     );
        //   },
        // )
      ),
    );
  }
}

