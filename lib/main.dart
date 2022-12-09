import 'package:contacts_getx/pages/add_screen.dart';
import 'package:contacts_getx/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer( 
  builder: (context, orientation, screenType) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: HomeScreen(),
    );
  },
);
  }
}

