import 'dart:io';

void main() {
  print('Digite a segunda nota');
  String codigo = stdin.readLineSync()!;
  // String caracterer

  print('Digite a segunda nota');
  double precoUni = double.parse(stdin.readLineSync()!);
  // preço quebrado

  print('Digite a terceira nota');
  int quanEstoque = int.parse(stdin.readLineSync()!);
  // preço único

  int numeroVenda = 0;
  int totalItensVendidos = 0;
  double totalValorVendas = 0.0;

  while (true) {
    print(
        'Informe a quantidade de itens  desejados para a venda  (Ou 0 para finalizar)');
    int quantidadeVendida = int.parse(stdin.readLineSync()!);
    if (quantidadeVendida == 0) {
      break;
    }

    if (quantidadeVendida <= quanEstoque) {
      quanEstoque -= quantidadeVendida;
      double valorVenda = quantidadeVendida * precoUni;

      totalItensVendidos += quantidadeVendida;
      totalValorVendas += valorVenda;
      numeroVenda++;
      print(
          "Venda $numeroVenda do produto $codigo = R\$ ${valorVenda.toStringAsFixed(2)} realizada com sucesso!");
    } else {
      print(
          "Estoque insuficiente para o produto $codigo! A quantidade disponível em estoque é: $quanEstoque");
    }
  }

  print("\n----- Resumo das Vendas -----");
  print("Código do produto: $codigo");
  print("Quantidade total de itens vendidos: $totalItensVendidos");
  print("Valor total a ser pago: R\$ ${totalValorVendas.toStringAsFixed(2)}");
}
