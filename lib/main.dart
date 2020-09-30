import 'package:flutter/material.dart';
import 'package:flutter_app_getteste/primeira_controller.dart';

import 'package:get/get.dart';

import 'primeira.dart';

import 'segunda.dart';
import 'terceira.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.

          primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: "/primeira",
        getPages: [
          GetPage(
            name: '/primeira',
            page: () => Primeira(),
           binding: BindingsBuilder(() => {
              Get .lazyPut<PrimeiraController>(
                      () => PrimeiraController()),
            }),
          ),

          GetPage(name: '/segunda', page: () => Segunda()), // recebe a ID
          GetPage(
              name: '/terceira',
              page: () => Terceira(),
              transition: Transition.cupertino),

        ]);
  }
}
