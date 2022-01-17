import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_demo/example2/models/user.dart';
import 'package:http/http.dart' as http;

class User_controller extends GetxController{
  var users=<User>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProduct();
  }

  void fetchProduct()async{
    final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map i in data){
        print(i['name']);
        users.add(User.fromJson(i));
      }
    }
    else{
      throw Exception("404 Not Found");
    }
  }

}