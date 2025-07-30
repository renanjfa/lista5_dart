import '../services/status_pedidos.dart';
import '../models/produto.dart';

class Pedido {
  List<Produto> produtos;
  StatusPedidos status;

  Pedido({required this.produtos}) : status = StatusPedidos.PENDENTE;
}
