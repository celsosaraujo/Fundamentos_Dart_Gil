import 'dart:io';

void main() {
  var deuCerto = true;
  do {
    print('Digite seu número da tabuada');

    try {
      int tabuada = int.parse(stdin.readLineSync()!);

      if (tabuada <= 0 || tabuada > 10) throw Exception("Valor Inválido");

      // if (tabuada >= 1 && tabuada <= 10) {
      for (int i = 1; i <= 10; i++) {
        print("$tabuada x $i = ${tabuada * i}");
      }
      // }else{
      //   print("Informe um número de 1 até 10!");
      // }
      deuCerto = true;
    } catch (e) {
      deuCerto = false;
      print("Número inteiro inválido, informe de 1 até 10!");
    }
  } while (!deuCerto);
}
