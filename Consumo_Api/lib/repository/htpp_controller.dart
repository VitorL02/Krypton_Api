import 'package:get/get.dart';
import 'package:kryptontech/repository/cars_repository.dart';

class HtppController extends GetxController with StateMixin {
  final CarsRepository _httpRepository;
  HtppController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findCars();
  }

  void findCars() async {
    //Caso os dados  estiverem carregando, o load sera mostrado
    change([], status: RxStatus.loading());

    //Tratamento de Exeption
    try {
      final dados = await _httpRepository.findAllCars();
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao Buscar Carros'));
    }
  }
}
