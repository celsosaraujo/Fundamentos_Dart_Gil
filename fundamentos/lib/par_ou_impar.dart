
import 'dart:io';


void main() {
  print('Digite Um número para verificar se impar ou par');
  int numero = int.parse(stdin.readLineSync()!); // Você pode mudar este valor para testar outros números

  if (numero % 2 == 0) {
    print("O número $numero é par.");
  } else {
    print("O número $numero é ímpar.");
  }
}





// void main() {
//   print('digite um número intero');
// int? numero = int.parse(stdin.readByteSync()!);
// }
  
//   if (numero % 2 == 0) {
//     print("O número $numero é par.");
//   } else {
//     print("O número $numero é ímpar.");
//   }
// }