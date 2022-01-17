import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_ex1 extends StatelessWidget {
  Home_ex1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<ProgrammingLanguage>(
          init: ProgrammingLanguage(),
            builder: (_)=>
                Text('Example 1 ( ${_.language} )')
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttons('C'),
            SizedBox(
              height: 10,
            ),
            buttons('c++'),
            SizedBox(
              height: 10,
            ),
            buttons('Java'),
            SizedBox(
              height: 10,
            ),
            buttons('Python'),
          ],
        ),
      ),
    );
  }

  Widget buttons(String s)=>
      ElevatedButton(
          onPressed: (){
            Get.find<ProgrammingLanguage>().changeLanguage(s);
            },
          child: Text(s),
      );
}



class ProgrammingLanguage extends GetxController {
  String language = '';

  void changeLanguage(String newLanguage) {
    language = newLanguage;
    update();
  }
}
