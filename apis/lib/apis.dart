class Livro {
  String titulo;
  int ano;
  int paginas;
  List<Vilao> viloes;

  Livro(this.titulo, this.ano, this.paginas, this.viloes);

  void mostrarCaracteristicas() {
    print("Livro: $titulo | Ano: $ano | Páginas: $paginas");
    print('Viloes: $viloes');
    print("---------------");
  }
}


class Vilao {
  String nome;

  Vilao(this.nome);
}
