import 'package:flutter/material.dart';
import 'package:getx_demo/example1/Home_ex1_simple.dart';
import 'package:getx_demo/example1/medium_ex1.dart';
import 'package:getx_demo/example2/controllers/user_controller.dart';
import 'package:getx_demo/example2/views/Users_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Users_page(),
    );
  }
}
