import 'package:get/get.dart';
import 'package:kryptontech/repository/cars_http_repository.dart';
import 'package:kryptontech/repository/cars_repository.dart';
import 'package:kryptontech/repository/htpp_controller.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<CarsRepository>(CarsHttpRepository());
    Get.put(HtppController(Get.find()));
  }
}
