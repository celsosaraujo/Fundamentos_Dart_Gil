import 'dart:io'; // Para capturar a entrada do usuário

void main() {
  List<String> dados = [];
  while (true) {
    print(
        "Digite o nome e o telefone separados por | (por exemplo, Fulano|123456789):");
    String entrada = stdin.readLineSync()!;

    // if (entrada.contains('|') && entrada.split("|")[1].length < 15) {
    if (entrada.contains('|')) {
      // dados = entrada.split('|');
      dados.add(entrada);
    } else {
      print(
          "Entrada inválida! Certifique-se de usar o caractere | para separar o nome e o telefone.");
    }
    print('Deseja continua? S Ou N');
    String resposta = stdin.readLineSync()!;
    if (resposta.toUpperCase() == 'N') break;
  }

  for (String dado in dados) {
    final nomeTelefone = dado.split("|");
    // String nome = dados[0].trim();
    // String telefone = dados[1].trim();

    // print("Nome: $nome");
    // print("Telefone: $telefone");
    // final telefone = (nomeTelefone[1].length >= 15)?"Telefone ${nomeTelefone[1]}":"";
    // print("Nome: ${nomeTelefone[0]} $telefone");
    print(
        "Nome: ${nomeTelefone[0]} ${(nomeTelefone[1].length >= 15) ? 'Telefone ${nomeTelefone[1]}' : ''}");
    // if (nomeTelefone[1].length >= 15)
    //   print("Nome: ${nomeTelefone[0]} Telefone: ${nomeTelefone[1]}");
    // else{
    //   print("Nome: ${nomeTelefone[0]}");
    // }
    // print("Telefone: ${nomeTelefone[1]}");
  }
  for (String dado in dados) {
    final nomeTelefone = dado.split("|");
    if (nomeTelefone[1].length >= 15) {
      final nomeTelefone = dado.split("|");
      print("Nome: ${nomeTelefone[0]} Telefone ${nomeTelefone[1]}");
    }
  }
}
