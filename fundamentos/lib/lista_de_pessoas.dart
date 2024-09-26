import 'dart:io'; // Para capturar a entrada do usuário

void main() {
  print(
      "Digite o nome e o telefone separados por | (por exemplo, Fulano|123456789):");
  String entrada = stdin.readLineSync()!;

  if (entrada.contains('|')) {
    List<String> dados = entrada.split('|');

    String nome = dados[0].trim();
    String telefone = dados[1].trim();

    print("Nome: $nome");
    print("Telefone: $telefone");
  } else {
    print(
        "Entrada inválida! Certifique-se de usar o caractere | para separar o nome e o telefone.");
  }
}
