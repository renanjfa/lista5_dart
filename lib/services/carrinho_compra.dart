import '../models/produto.dart';
class CarrinhoDeCompras {
    List<Produto> produtos = [];

    CarrinhoDeCompras();

    void adicionarProduto(Produto p) {
      this.produtos.add(p);
    }

    double calcularTotal() {
      double total = 0;
      for(var i in produtos) {
        total = total + i.preco;
      }
      return total;
    }

    void exibirCarrinho() {
      print("--- Itens no Carrinho ---");
      for(var i in produtos) {
        String nome = i.nome;
        double preco = i.preco;
        print("- $nome: R\$ $preco");
      }
      print("-----------------------");
      double totalPreco = calcularTotal();
      print("Total do Carrinho: R\$ $totalPreco");
    }
}
