import 'package:http/http.dart' as http;
import 'dart:convert';

// Generate your own API Key
const apiKey = '';
const coinApiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future<dynamic> getCoinsData(List coinNames, String currency) async {
    List coinsData = [];
    for (String coinName in coinNames) {
      NetworkHelper networkHelper =
          NetworkHelper('$coinApiURL/$coinName/$currency?apiKey=$apiKey');
      var coinData = await networkHelper.getData();
      coinsData.add(coinData['rate'].toInt());
    }
    return coinsData;
  }
}

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    Uri url = Uri.parse(this.url);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

const List<String> currenciesList = [
  'USD',
  'TRY',
  'EUR',
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];
