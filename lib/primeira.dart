import 'package:flutter/material.dart';
import 'package:flutter_app_getteste/primeira_controller.dart';
import 'package:get/get.dart';

class Primeira extends StatelessWidget {

  PrimeiraController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Primeira",
            style: TextStyle(fontSize: 40),
          ),
          Obx(()=>Text("Conatador: ${controller.count.value}"),),
          RaisedButton(
            child: Text(
              "add",
            ),
            onPressed: () => controller.add()),

          RaisedButton(
            child: Text(
              "go segunda",
            ),
            onPressed: () => Get.toNamed("/segunda"),
          )
        ],
      ),
    );
  }
}
