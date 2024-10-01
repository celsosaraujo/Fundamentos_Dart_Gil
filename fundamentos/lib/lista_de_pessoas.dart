import 'dart:io'; // Para capturar a entrada do usuário

void main() {
  List<String> dados = [];
  while (true) {
    print(
        "Digite o nome e o telefone separados por | (por exemplo, Fulano|123456789):");
    String entrada = stdin.readLineSync()!;

    if (entrada.contains('|')) {
      dados = entrada.split('|');
    } else {
      print(
          "Entrada inválida! Certifique-se de usar o caractere | para separar o nome e o telefone.");

      print('Deseja continua? S Ou N');
      String resposta = stdin.readLineSync()!;
      if (resposta == 'N') break;
    }

    for (String dados in dados) {
      String nome = dados[0].trim();
      String telefone = dados[1].trim();

      print("Nome: $nome");
      print("Telefone: $telefone");
    }
  }
}
