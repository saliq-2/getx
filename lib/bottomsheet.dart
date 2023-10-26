import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class bottom extends StatefulWidget
{
  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Welcome"),

              onTap: (){
                Get.defaultDialog(title:"Delete chat",
                  middleText: "Are u sure",
                  //
                  // textConfirm: "Yes",
                  // textCancel: "No",
                  confirm: TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("fda")),
                  cancel: TextButton(onPressed: (){

                    Get.back();
                  }, child: Text("jd")),


                );

              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Welcome"),

              onTap: (){
                Get.bottomSheet(
                  Container(
                    color: Colors.blue,
                    child: Column(children: [

                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Light theme"),
                        onTap: (){
                          Get.changeTheme(ThemeData.light());

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Dark theme"),
                        onTap: (){
                          Get.changeTheme(ThemeData.dark());

                        },
                      ),
                    ],
                    ),
                  )



                );

              },
            ),
          ),
        ],
      ),
    );
  }
}