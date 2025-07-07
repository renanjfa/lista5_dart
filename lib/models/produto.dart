abstract class Produto {
  late String _codigo;
  late String _nome;
  late double _preco;
  late int serie;
  late bool descontado;
  late double desconto;
  static int totalProdutos = 0;

  Produto();

  Produto.criar({
    required String codigo,
    required String nome,
    required double preco,
  })  : serie = totalProdutos + 1,
        descontado = false,
        desconto = 0 {
    _codigo = codigo;
    _nome = nome;
    _preco = preco;
    totalProdutos++;
  }


  String get tipo;

  get codigo => _codigo;

  get nome => _nome;

  get preco => _preco;

  set novoPreco(double novoPreco) {
    if(novoPreco < 0) {
      print("Erro: o preco nao pode ser negativo. Valor de $_preco reais mantido");
    } else {
      this._preco = novoPreco;
    }
  }

  void exibirDetalhes() {
    print("--- Produto $serie ---\n_codigo: $_codigo\n_nome: $_nome\nPreco: $_preco reais");
    if(descontado) 
      print("Desconto de $desconto% aplicado ao produto");
    print("");
  }

  aplicarDesconto(double percentual) {
    double desconto = 1 - percentual/100;
    this._preco = _preco * desconto;
    this.descontado = true;
    this.desconto = percentual;
  }

  static void exibirTotalProdutos() {
    print("Total de produtos criados: $totalProdutos");
  }

}