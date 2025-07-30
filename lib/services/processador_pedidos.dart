import '../models/pedido.dart';
import 'status_pedidos.dart';

class ProcessadorPedidos {
  Future<void> processar({required Pedido pedido, required Function( (bool, String) ) onComplete}) async {
    await Future.delayed(Duration(seconds: 3));

    if(pedido.produtos.length <= 0)
      throw PagamentoException('Pagamento nao pode ser processado para um carrinho vazio.');

    pedido.status = StatusPedidos.PROCESSANDO;
    onComplete;
  }
}

class PagamentoException implements Exception {
  final String mensagem;
  PagamentoException(this.mensagem);
}