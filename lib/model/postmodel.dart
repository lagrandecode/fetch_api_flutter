import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class ApiProvider{
  final url =Uri.parse("https://kobo.humanitarianresponse.info/api/v2/permissions/partial_submissions/?format=json");
  Future getData() async{
    final response = await http.get(url);
    if(response.statusCode == 200){
    final body = response.body;
    final res = json.decode(body);
    return res;
    }
    else{
      return json.decode(response.body);
    }
  }
}