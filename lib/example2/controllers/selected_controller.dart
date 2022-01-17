import 'package:get/get.dart';
import 'package:getx_demo/example2/models/user.dart';

class SelectedController extends GetxController{
  var selectedUsers=<User>[].obs;
  var status=false.obs;
   int get selectedUsersLength=>selectedUsers.length;

  addToSelected(User user){
    selectedUsers.add(user);
  }


  bool get isSelectedStatus=>true;
}



//ekjon user ke zeno 1 bar er beshi select na kora jay tai e kaj korchi
/*
    var status=false;
    for(int i=0;i<selectedUsers.length;i++){
      if(selectedUsers[i].id==user.id){
        status=true;
      }
    }
    status?null:selectedUsers.add(user);
 */