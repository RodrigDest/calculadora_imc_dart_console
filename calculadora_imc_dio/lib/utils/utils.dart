import 'dart:convert';
import 'dart:io';

String inputString(String msg) {
  print(msg);
  String line = stdin.readLineSync(encoding: utf8) ?? "";

  return line;
}

double inputNum(String msg) {
  print(msg);
  var line = stdin.readLineSync(encoding: utf8) ?? "0";

  try {
    return double.parse(line);
  } catch (e) {
    print("Entrada invalida! retornando valor padrão.");

    return 0.0;
  }
}
