import 'produto.dart';

class ProdutoAlimenticio extends Produto {
  late String _dataValidade;

  ProdutoAlimenticio({
    required String codigo,
    required String nome,
    required double preco,
    required String dataValidade,
  }) : super.criar(codigo: codigo, nome: nome, preco: preco) {
    _dataValidade = dataValidade;
  }

   String get tipo => 'Alimentício';

  String get validade => _dataValidade;

  void exibirDetalhes() {
    print("--- Detalhes do Produto ---\nCodigo: $codigo\nNome: $nome\nPreco: $preco reais\nData de validade: $_dataValidade");
    if(descontado) 
      print("Desconto de $desconto% aplicado ao produto");
    print("");
  }

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'nome': nome,
      'codigo': codigo,
      'validade': validade,
      'preco': preco
    };
  }
}