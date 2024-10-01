void main() {
  print(
      '--------------------------------- DESAFIO FUNDAMENTOS EM DART ---------------------------------');
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //1º Imprima os dados dos pacientes na tela
  print('\n// 1º - Pacientes');
  for (var paciente in pacientes) {
    print(paciente);
  }

  //2º Imprima os pacientes acima de 20 anos
  print('\n// 2º - Pacientes acima de 20 ano');
  for (var paciente in pacientes) {
    var dados = paciente.split('|');
    var nome = dados[0];
    var idade = int.parse(dados[1]);

    if (idade > 20) {
      print('Nome: $nome , Idade: $idade ');
    }
  }

  // 3º Imprima a quantidade de pacientes por profissão
  print('\n// 3º - Quantidade de pacientes por profissão');

  var desenvolvedores = 0;
  var estudantes = 0;
  var dentistas = 0;
  var jornalistas = 0;

  for (var paciente in pacientes) {
    var dados = paciente.split('|');
    var profissao = dados[2].toLowerCase().trim();

    if (profissao == 'desenvolvedor') {
      desenvolvedores++;
    } else if (profissao == 'estudante') {
      estudantes++;
    } else if (profissao == 'dentista') {
      dentistas++;
    } else if (profissao == 'jornalista') {
      jornalistas++;
    }

    print('- Quantidade de Desenvolvedore(s): $desenvolvedores');
    print('- Quantidade de Estudante(s): $estudantes');
    print('- Quantidade de Dentista(s): $dentistas');
    print('- Quantidade de Jornalista(s): $jornalistas');
  }
  // 4º Imprima os pacientes por profissão.
  // Deve ser impresso apenas Nome, idade e profissão.
  print('\N// 4º - Pacientes que moram em SP');
  for (var paciente in pacientes) {
    var dados = paciente.split('|');
    var nome = dados[0];
    var idade = dados[1];
    var profissao = dados[2];
    print('Nome: $nome, Idade: $idade, Profissão: $profissao');
  }

  // 5º Exclua todos os estudantes e em seguida imprima os pacientes
  print('\n// 5º - Pacientes após remover estudantes');
  pacientes.removeWhere(
      (paciente) => paciente.split('|')[2].toLowerCase().trim() == 'estudante');
  for (var paciente in pacientes) {
    print(paciente);
  }

  // 6º Inclua os pacentes abaixo nas primeira posições

  pacientes.insertAll(0, [
    'Manoel Silva|12|estagiário|MG',
    'Joaquim Rahman|18|estagiário|SP',
    'Fernando Verne|35|estagiário|MG',
  ]);

  print('\n// 6º - Pacientes após adicionar estagiários');
  for (var paciente in pacientes) {
    print(paciente);
  }
}
