import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/example2/controllers/selected_controller.dart';
import 'package:getx_demo/example2/controllers/user_controller.dart';

class Users_page extends StatelessWidget {
  Users_page({Key? key}) : super(key: key);

  final userController = Get.put(User_controller());
  final selectedController = Get.put(SelectedController());

  List<bool> isSelected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<User_controller>(builder: (controller) {
                return ListView.builder(
                    itemCount: controller.users.length,
                    itemBuilder: (context, index) {
                      isSelected.insert(index, false);
                      return Card(
                        child: ListTile(
                          title: Text(controller.users[index].name),
                          trailing: isSelected[index]?Icon(Icons.favorite):Icon(Icons.favorite_border),
                          onTap: () {
                            selectedController
                                .addToSelected(controller.users[index]);
                          },
                        ),
                      );
                    });
              }),
            ),
            GetX<SelectedController>(
                builder: (_) => Text('Total amount: ${_.selectedUsersLength}')),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

