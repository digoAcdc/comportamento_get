import 'package:flutter/material.dart';
import 'package:flutter_app_getteste/primeira_controller.dart';
import 'package:get/get.dart';

class Terceira extends StatelessWidget {

  PrimeiraController controller = Get.find();


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Terceira",
            style: TextStyle(fontSize: 40),
          ),
          Obx(()=>Text("Conatador: ${controller.count.value}"),),
          RaisedButton(
              child: Text(
                "add",
              ),
              onPressed: () => controller.add()),
         /* RaisedButton(
            child: Text(
              "go terceira",
            ),
            onPressed: () => Get.toNamed("/terceira"),
          )*/
        ],
      ),
    );
  }
}