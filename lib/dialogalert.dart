import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class dialogalert extends StatefulWidget
{
  @override
  State<dialogalert> createState() => _dialogalertState();
}

class _dialogalertState extends State<dialogalert> {
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
                Get.defaultDialog(title:"Bottom Sheet",
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
        ],
      ),
    );
  }
}