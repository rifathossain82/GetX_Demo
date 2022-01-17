import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

class Medium_ex1 extends StatelessWidget {
  Medium_ex1({Key? key}) : super(key: key);

  ProgrammingLanguage programmingLanguage=Get.put(ProgrammingLanguage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(()=>Text('Example 1 Medium ( ${programmingLanguage.language.value.name} )')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttons('C'),
            SizedBox(
              height: 10,
            ),
            buttons('C++'),
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
  final language = Language().obs;

  void changeLanguage(String newLanguage) {
    language.update((val) {
      val!.name=newLanguage;
    });
  }
}




class Language{
  String name;
  Language({this.name='unknown'});
}