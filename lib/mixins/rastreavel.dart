mixin Rastreavel {

   String gerarEtiquetaEnvio(String codigo, String nomeProduto) {
    return '''
    =========================
    ETIQUETA DE ENVIO
    Código: $codigo
    Produto: $nomeProduto
    ''';
  }
  
}