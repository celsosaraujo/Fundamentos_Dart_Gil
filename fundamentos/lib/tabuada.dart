import 'dart:io';

void main() {
  print('Digite seu número da tabuada');

  try {
    int tabuada = int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= 10; i++) {
      print("$tabuada x $i = ${tabuada * i}");
    }
  } catch (e) {
    print("Número inteiro inválido!");
  }
}