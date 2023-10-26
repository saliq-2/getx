import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class homepage extends StatefulWidget
{
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar(

         "hello","kfs",
          backgroundColor: Colors.black,
          snackPosition: SnackPosition.BOTTOM
        );
      }),

    );
  }
}