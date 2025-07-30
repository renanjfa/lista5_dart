
import '../lib/models/produto.dart';
import '../lib/models/produto_alimenticio.dart';
import '../lib/models/produto_eletronico.dart';
import '../lib/services/carrinho_compra.dart';

void main() {

  CarrinhoDeCompras carrinho = new CarrinhoDeCompras();
  Produto p1 = new ProdutoAlimenticio(codigo: "123", nome: "Pao", preco: 25.0, dataValidade: "12/11/2025");
  Produto p2 = new ProdutoEletronico(codigo: "124", nome: "Computador HP", preco: 625.0, garantia: 12);

  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);

  print(carrinho.calcularTotal());

  carrinho.exibirCarrinho();
}