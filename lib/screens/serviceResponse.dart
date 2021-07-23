import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart';

Uri url = Uri.parse('https://foodbankapp.tqnee.com/api/v1/user_login');
Future getData() async {
  Response response = await post(url, body: {
    'phone_number': '01552627707',
    'password': '10001000',
    'device_token': 'QOPEJGMQWPOEJGOWEJGQOPJOPGJQPIEGJQPOGJQPOGJQPOGJQEPOGJ',
  });

  if (response.statusCode == 200) {
    String data = response.body;

    return data;
  } else {
    return (response.statusCode);
  }
}

class ServiceResponse extends StatefulWidget {
  static const String id = 'ServiceResponse';

  ServiceResponse({Key? key}) : super(key: key);

  @override
  _ServiceResponseState createState() => _ServiceResponseState();
}

class _ServiceResponseState extends State<ServiceResponse> {
  @override
  Widget build(BuildContext context) {
    getData();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Response Body'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.toString());
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
