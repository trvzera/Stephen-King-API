import 'dart:convert';
import 'package:apis/apis.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> buscarLivro() async {
  final url = Uri.parse('https://stephen-king-api.onrender.com/api/books');
  final resposta = await http.get(url);

  if (resposta.statusCode == 200) {
    Map<String, dynamic> corpoDaResposta = jsonDecode(resposta.body);

    return corpoDaResposta['data'];
  } else {
    throw Exception("Erro no servidor: Código ${resposta.statusCode}");
  }
}

Future<void> main() async {
  print("Iniciando sistema...");
  print("Solicitando acesso ao servidor");
  try {
    List<dynamic> listaDeLivros = await buscarLivro();

    print("Resposa encontrada com sucesso!");
    print("==== LISTA DOS LIVROS ====");

    for (var livro in listaDeLivros) {
      List<String> viloesLista = [];
      String titulo = livro['Title'];
      int ano = livro['Year'];
      int paginas = livro['Pages'];
      for (var viloesLivro in livro['villains']) {
        Vilao vilao = Vilao(viloesLivro['name']);
        String nomeVilao = vilao.nome;
        viloesLista.add(nomeVilao);
      }
      Livro novoLivro = Livro(titulo, ano, paginas);
      novoLivro.mostrarCaracteristicas();
      print(viloesLista);
      print("----------");
    }
  } catch (e) {
    print("Falha ao carregar os dados: $e");
  }
  print("Sistema finalizado!");
}
