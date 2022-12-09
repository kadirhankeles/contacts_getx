import 'package:contacts_getx/pages/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/register_controller.dart';

class AddScreen extends StatelessWidget {
  AddScreen({super.key});
  
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  RegisterController registerController=Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff607d8b),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 13.h,
              width: 13.h,
              padding: EdgeInsets.only(right: 0.8.h),
              decoration: BoxDecoration(
                  color: Color(0xffa7c0cd),
                  borderRadius: BorderRadius.circular(100)),
              child: Image(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png")),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 6.h, right: 6.h, top: 5.h, bottom: 2.h),
            child: TextField(
              controller: nameController,
              style:
                  TextStyle(fontSize: 18, height: 0.15.h, color: Colors.white),
              decoration: InputDecoration(
                isDense: false,
                filled: true,
                contentPadding:
                    EdgeInsets.only(bottom: 0, top: 0, left: 2.h, right: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Name and Surname',
                fillColor: Color(0xff8eacbb).withOpacity(0.5),
                labelStyle:
                    TextStyle(color: Colors.grey.shade700, fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h, right: 6.h,bottom: 5.h),
            child: TextField(
              controller: numberController,
              style:
                  TextStyle(fontSize: 18, height: 0.15.h, color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                isDense: false,
                filled: true,
                contentPadding:
                    EdgeInsets.only(bottom: 0, top: 0, left: 2.h, right: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Phone Number',
                fillColor: Color(0xff8eacbb).withOpacity(0.5),
                labelStyle:
                    TextStyle(color: Colors.grey.shade700, fontSize: 15),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              
              backgroundColor: Color(0xff34515e),
              shape: StadiumBorder()
            ),
            onPressed: () {
              nameController.text.isNotEmpty?registerController.addUser(nameController.text, numberController.text):null;
              registerController.dataSave();
              Get.to(HomeScreen());
          }, child: Text("     Add     "))
        ],
      ),
    );
  }
}
