import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Pages/Car_form.dart';
import 'package:kryptontech/repository/http_bindings.dart';
import 'Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          children: [
            GetPage(
              name: '/car_form',
              page: () => Car_Form(),
            )
          ],
          binding: HttpBindings(),
        )
      ],
    );
  }
}
