import 'package:calculadora_imc_dio/classes/calculadora_imc_dio.dart';

class Pessoa {
  String _nome = "";
  double _idade = 0;
  double _altura = 0;
  double _peso = 0;

  Pessoa(String nome, double idade, double altura, double peso) {
    setNome(nome);
    setIdade(idade);
    setAltura(altura);
    setPeso(peso);
  }

  void setIdade(double idade) {
    _idade = idade;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  double getIdade() {
    return _idade;
  }

  double getAltura() {
    return _altura;
  }

  double getPeso() {
    return _peso;
  }

  String getNome() {
    return _nome;
  }

  void printer() {
    print(getNome());
    print(getIdade());
    print(getAltura());
    print(getPeso());
  }

  double getIMC() {
    return calcularIMC(getPeso(), getAltura());
  }

  String getStatus() {
    String status = "Desconhecido";

    switch (getIMC()) {
      case >= 40.0:
        status = "com Obesidade Grau ||| (Mórbida)";

      case >= 35:
        status = "com Obesidade Grau || (Severa)";

      case >= 30:
        status = "com Obesidade Grau |";

      case >= 25.0:
        status = "com Sobrepeso";

      case >= 18.5:
        status = "Saudavel";

      case >= 17:
        status = "com Magreza Leve";

      case >= 16.0:
        status = "com Magreza Moderada";

      case < 16.0:
        status = "com Magreza Grave";
    }

    return status;
  }
}
