import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @readonly
  String _nome = '';

  @readonly
  bool _showSnackbar = false;

  @readonly
  String _mensagemSnackbar = ''; 

  @action
  void alterarNome(String nome){
    this._nome = nome;
  }

  @action
  Future<void> mostrarSnackbar() async {
    _mensagemSnackbar = 'Academia do flutter';
    _showSnackbar = false;
    await Future.delayed(Duration.zero);
    _showSnackbar = true;
  }
}