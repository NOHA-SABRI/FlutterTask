import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:flutter_application_1/screens/serviceResponse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => Login(),
        ServiceResponse.id: (context) => ServiceResponse(),
      },
    );
  }
}
