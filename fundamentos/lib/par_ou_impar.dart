import 'dart:io';

void main() {
  print('Digite Um número para verificar se impar ou par');
  // int numero = int.parse(stdin.readLineSync()!); // Você pode mudar este valor para testar outros números
  final numeroInteiro = stdin.readLineSync();

  //if (numeroInteiro != null && int.tryParse(numeroInteiro) != null) {
  try{
    // int numero = int.parse(numeroInteiro!); // Você pode mudar este valor para testar outros números
    // if (numero % 2 == 0) {
    if (int.parse(numeroInteiro!) % 2 == 0) {
      print("O número $numeroInteiro é par.");
    } else {
      print("O número $numeroInteiro é ímpar.");
    }
  } catch(e){
    print("Número inteiro inválido");
  }
  // } else {
  //   print("Número inteiro inválido");
  // }
}
