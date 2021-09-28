import 'dart:convert';

import 'package:kryptontech/models/Cars.dart';
import 'package:kryptontech/repository/cars_repository.dart';
//As http faz o alias (me permitindo utilzar somente htpp. e acessar todos os metodos)
import 'package:http/http.dart' as http;

class CarsHttpRepository implements CarsRepository {
  @override
  Future<List<Cars>> findAllCars() async {
    var url =
        Uri.parse('https://apiintranet.kryptonbpo.com.br/test-dev/exercise-1');
    final response = await http.get(url);
    //Converte o Json para Uma lista de strings
    final Map<String, dynamic> data = json.decode(response.body);
  }
}
