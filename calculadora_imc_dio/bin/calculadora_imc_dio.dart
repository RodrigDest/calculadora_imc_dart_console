import 'package:calculadora_imc_dio/classes/pessoa.dart';
import 'package:calculadora_imc_dio/utils/utils.dart';

void main(List<String> arguments) {
  //cadastrar informações
  String nome = inputString("Qual é seu nome?");
  double idade = inputNum("Qual a sua idade?");
  double altura = inputNum("Qual a sua altura?");
  double peso = inputNum("Qual é o seu peso?");

  var p1 = Pessoa(nome, idade, altura, peso);

  String resultado =
      "Olá, $nome! O seu IMC é de ${p1.getIMC()} e isto significa que você esta ${p1.getStatus()}!";
  print(resultado);
}
