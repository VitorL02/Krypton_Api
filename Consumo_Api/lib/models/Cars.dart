// ignore: unused_import
import 'dart:convert';

// Classe que recebe os dados dos dados Json
class Cars {
  List<Carros> carros;
  List<Motores> motores;

  Cars({this.carros, this.motores});

  Cars.fromJson(Map<String, dynamic> json) {
    if (json['carros'] != null) {
      // ignore: deprecated_member_use
      carros = new List<Carros>();
      json['carros'].forEach((v) {
        carros.add(new Carros.fromJson(v));
      });
    }
    if (json['motores'] != null) {
      // ignore: deprecated_member_use
      motores = new List<Motores>();
      json['motores'].forEach((v) {
        motores.add(new Motores.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.carros != null) {
      data['carros'] = this.carros.map((v) => v.toJson()).toList();
    }
    if (this.motores != null) {
      data['motores'] = this.motores.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Carros {
  int id;
  String marca;
  String modelo;
  String cor;
  int motorId;

  Carros({this.id, this.marca, this.modelo, this.cor, this.motorId});

  Carros.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    marca = json['marca'];
    modelo = json['modelo'];
    cor = json['cor'];
    motorId = json['motor_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['marca'] = this.marca;
    data['modelo'] = this.modelo;
    data['cor'] = this.cor;
    data['motor_id'] = this.motorId;
    return data;
  }
}

class Motores {
  int id;
  String posicionamentoCilindros;
  int cilindros;
  int litragem;
  String observacao;

  Motores(
      {this.id,
      this.posicionamentoCilindros,
      this.cilindros,
      this.litragem,
      this.observacao});

  Motores.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    posicionamentoCilindros = json['posicionamento_cilindros'];
    cilindros = json['cilindros'];
    litragem = json['litragem'];
    observacao = json['observacao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['posicionamento_cilindros'] = this.posicionamentoCilindros;
    data['cilindros'] = this.cilindros;
    data['litragem'] = this.litragem;
    data['observacao'] = this.observacao;
    return data;
  }
}
