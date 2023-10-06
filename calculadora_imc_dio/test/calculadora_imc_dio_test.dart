import 'package:calculadora_imc_dio/classes/calculadora_imc_dio.dart';
import 'package:test/test.dart';

void main() {
  test('calcularIMC', () {
    expect(calcularIMC(50, 1.78), 15.78);
  });
}
