import 'package:flutter/material.dart';
import 'Screens/LoginPage.dart';


/*
  default username and passwords

  username:root , password admin
  username:user , password 1234
  username:rr   , password pass

*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aurora Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LogInPage(),
    );
  }
}
