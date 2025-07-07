class GerenciadorEstoque {

  // Map <codigo, quantidade no estoque> estoque
  final Map<String, int> _estoque = {};


  void adicionarProduto(String codigo, int quantidade) {

    if (_estoque.containsKey(codigo)) {
      _estoque[codigo] = _estoque[codigo]! + quantidade;

    } else {
      _estoque[codigo] = quantidade;
    }
  }


  bool verificarEstoque(String codigo) {
    return _estoque.containsKey(codigo) && _estoque[codigo]! > 0;
  }

  
  void mostrarInventario() {
    print('--- Inventário Atual ---');
    _estoque.forEach((codigo, quantidade) {
      print('[$codigo]: $quantidade unidades');
    });
    print('------------------------');
  }

}