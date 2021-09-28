import 'package:flutter/material.dart';

// ignore: camel_case_types
class Car_Form extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Car_Form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastre seu Carro'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
      ),
    );
  }
}
