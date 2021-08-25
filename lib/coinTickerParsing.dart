import 'dart:convert';

import 'package:http/http.dart' as http;

var coinCode = [
  'BTC',
  'ETH',
  'LTC',
  'ETC',
  'XRP',
  'BCH',
  'QTUM',
  'BTG',
  'EOS',
  'ICX',
  'TRX',
  'ELF',
  'OMG',
  'KNC',
  'GLM',
  'ZIL',
  'WAXP',
  'POWR',
  'LRC',
  'STEEM',
  'STRAX',
  'ZRX',
  'REP',
  'XEM',
  'SNT',
  'ADA',
  'CTXC',
  'BAT',
  'WTC',
  'THETA',
  'LOOM',
  'WAVES',
  'TRUE',
  'LINK',
  'ENJ',
  'DOGE',
  'VET',
  'MTL',
  'TMTG',
  'QKC',
  'HDAC',
  'AMO',
  'BSV',
  'DAC',
  'ORBS',
  'TFUEL',
  'VALOR',
  'CON',
  'ANKR',
  'MIX',
  'CRO',
  'FX',
  'CHR',
  'MBL',
  'IOST'
];

const bithumbURL = 'https://api.bithumb.com/public/ticker/';

class parseData {
  Future getCoinData() async {
    Map<String, List<double>> dataMap = {};

    //  for (String coin in coinCode) {
    List<double> coinData = [];
    //String requestURL = '$bithumbURL/${coin}_$selectedCurreny';
    String requestURL = '$bithumbURL/CTXC_KRW';
    http.Response response = await http.get(Uri.parse(requestURL));
    if (response.statusCode == 200) {
      var tempData = jsonDecode(response.body);
      var presentPrice = tempData['data']['closing_price'];
      var recentlyRate = tempData['data']['fluctate_rate_24H'];
      var recentlyTradeValue = tempData['data']['acc_trade_value_24H'];

      coinData.add(double.parse(presentPrice));
      coinData.add(double.parse(recentlyRate));
      coinData.add(double.parse(recentlyTradeValue));

      dataMap['CTXC'] = coinData;
    } else {
      print(response.statusCode);
      throw 'Error';
    }
    //}
    //print(dataMap);
    return dataMap;
  }
}
