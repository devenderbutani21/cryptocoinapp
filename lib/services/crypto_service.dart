import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:cryptocoinapp/models/cryptocoin_model.dart';

class CryptoService{
  Future<CryptoCoinModel> fetchCoinValues() async {
    final response = await http.get('https://api.coinlore.net/api/tickers/');
    if(response.statusCode == 200 ) {
      print(response.body);
      return CryptoCoinModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Crypto Coins Values not found");
    }
  }

}