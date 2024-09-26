import 'dart:io';

void main() {
  print('Digite seu número da tabuada');

  int tabuada = int.parse(stdin.readLineSync()!);

  // para rodar o stdin precisa import "dart:io"
  // para 

  for (int i = 1; i <= 10; i++) {
    print("$tabuada x $i = ${tabuada * i}");
  }
}
