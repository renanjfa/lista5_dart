import '../mixins/rastreavel.dart';
import 'produto.dart';

class ProdutoEletronico extends Produto with Rastreavel {
  late int _garantiaMeses;

  ProdutoEletronico({
    required String codigo,
    required String nome,
    required double preco,
    required int garantia,
  }) : super.criar(codigo: codigo, nome: nome, preco: preco) {
    _garantiaMeses = garantia;
  }

  int get garantia => _garantiaMeses;

  String get tipo => 'Eletrônico';

  void exibirDetalhes() {
    print("--- Detalhes do Produto ---\nCodigo: $codigo\nNome: $nome\nPreco: $preco reais\nGarantia: $_garantiaMeses meses");
    if(descontado) 
      print("Desconto de $desconto% aplicado ao produto");
    print("");
  }

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'nome': nome,
      'codigo': codigo,
      'garantiaMeses': garantia,
      'preco': preco
    };
  }


}