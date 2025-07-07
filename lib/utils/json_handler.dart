import 'dart:convert';
import 'dart:io';

class JsonHandler {
  
  // Salva a lista de produtos (convertidos em Map) no arquivo
  static Future<void> salvarCarrinho(List<Map<String, dynamic>> carrinho, String caminhoArquivo) async {

    final file = File(caminhoArquivo);
    final jsonString = jsonEncode(carrinho);
    await file.writeAsString(jsonString);
  }

  // Carrega o JSON do arquivo e retorna a lista de Maps
  static Future<List<Map<String, dynamic>>> carregarCarrinho(String caminhoArquivo) async {

    final file = File(caminhoArquivo);
    if (await file.exists()) {
      final jsonString = await file.readAsString();
      final List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.cast<Map<String, dynamic>>();

    } else {
      return [];
    }
  }
}
