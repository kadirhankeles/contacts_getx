import 'package:contacts_getx/pages/add_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

import '../controller/register_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  RegisterController registerController=Get.put(RegisterController());
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScrollAppBar(
        controller: controller,
        title: Text("My Contacts"),
        backgroundColor: Color(0xff4b636e),
      ),
      body: Obx(() => ListView.builder(
          itemCount: registerController.userList.length,
          
          itemBuilder: (context, index) {
            return Container(
              height: 8.h,
               color: index%2==0? Color(0xffa7c0cd):Color(0xff8eacbb),
              //margin: EdgeInsets.only(bottom: 1.h),
              child: Row(
                children: [
                  SizedBox(width: 2.h,),
                  Container(
                    height: 6.5.h,
                    width: 6.5.h,
                    child: Center(child: Text("${registerController.userList[index].name![0].toString().toUpperCase()}", style: TextStyle(color: Colors.white, fontSize: 24),)),
                    decoration: BoxDecoration(
                        color: Color(0xff4b636e),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  SizedBox(width: 3.h,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Container(height: 2.h, width: 31.h,child: Text("${registerController.userList[index].name}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold ),)), Container(width: 31.h,child: Text("${registerController.userList[index].number}"))],
                  ),
                  SizedBox(width: 0.h,),
                  IconButton(onPressed: () {
                    
                  }, icon: Icon(Icons.more_vert, color: Color(0xff4b636e),))
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
         backgroundColor: Color(0xff29434e),
        onPressed: () {
          Get.to(AddScreen());
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes au
    );
  }
}
