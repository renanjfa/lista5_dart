enum StatusPedidos {
  PENDENTE("pendente"),
  PROCESSANDO("processando"), 
  ENVIADO("enviado"),
  ENTREGUE("entregue"),
  CANCELADO("cancelado"),
  FALHOU("falhou");

  const StatusPedidos(this.status);

  final String status;
}