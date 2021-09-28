import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kryptontech/models/Cars.dart';
import 'package:kryptontech/repository/htpp_controller.dart';

class HomePage extends GetView<HtppController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Carros'),
        backgroundColor: Colors.indigo,
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final Cars item = state[index];
            return ListTile(
              title: Text('$item.marca'),
            );
          },
        );
      }, onError: (error) {
        return Center(
          child: Text('$error'),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/car_form'),
        child: Icon(Icons.directions_car),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
