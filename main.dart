
import 'package:appmedic/login_prueba.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'App Medic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan,
        accentColor: Colors.cyan[300],
      ),
      initialRoute:LoginPer.id='loginPage',

      routes: {
        LoginPer.id='loginPage':(context) => LoginPer(),
      },
    );
  }
}


