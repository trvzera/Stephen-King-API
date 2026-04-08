class Livro {
  String titulo;
  int ano;
  int paginas;

  Livro(this.titulo, this.ano, this.paginas);

  void mostrarCaracteristicas() {
    print("Livro: $titulo | Ano: $ano | Páginas: $paginas");
    print("---VILÕES---");
  }
}

class Vilao {
  String nome;

  Vilao(this.nome);
}
