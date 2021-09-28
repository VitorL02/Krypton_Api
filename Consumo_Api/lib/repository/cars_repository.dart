import 'package:kryptontech/models/Cars.dart';

abstract class CarsRepository {
  Future<List<Cars>> findAllCars();
}
