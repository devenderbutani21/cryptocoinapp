// To parse this JSON data, do
//
//     final cryptoCoinModel = cryptoCoinModelFromJson(jsonString);

import 'dart:convert';

CryptoCoinModel cryptoCoinModelFromJson(String str) => CryptoCoinModel.fromJson(json.decode(str));

String cryptoCoinModelToJson(CryptoCoinModel data) => json.encode(data.toJson());

class CryptoCoinModel {
  CryptoCoinModel({
    this.data,
    this.info,
  });

  List<Datum> data;
  Info info;

  factory CryptoCoinModel.fromJson(Map<String, dynamic> json) => CryptoCoinModel(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    info: Info.fromJson(json["info"]),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "info": info.toJson(),
  };
}

class Datum {
  Datum({
    this.id,
    this.symbol,
    this.name,
    this.nameid,
    this.rank,
    this.priceUsd,
    this.percentChange24H,
    this.percentChange1H,
    this.percentChange7D,
    this.priceBtc,
    this.marketCapUsd,
    this.volume24,
    this.volume24A,
    this.csupply,
    this.tsupply,
    this.msupply,
  });

  String id;
  String symbol;
  String name;
  String nameid;
  int rank;
  String priceUsd;
  String percentChange24H;
  String percentChange1H;
  String percentChange7D;
  String priceBtc;
  String marketCapUsd;
  double volume24;
  double volume24A;
  String csupply;
  String tsupply;
  String msupply;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    symbol: json["symbol"],
    name: json["name"],
    nameid: json["nameid"],
    rank: json["rank"],
    priceUsd: json["price_usd"],
    percentChange24H: json["percent_change_24h"],
    percentChange1H: json["percent_change_1h"],
    percentChange7D: json["percent_change_7d"],
    priceBtc: json["price_btc"],
    marketCapUsd: json["market_cap_usd"],
    volume24: json["volume24"].toDouble(),
    volume24A: json["volume24a"].toDouble(),
    csupply: json["csupply"],
    tsupply: json["tsupply"] == null ? null : json["tsupply"],
    msupply: json["msupply"] == null ? null : json["msupply"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "symbol": symbol,
    "name": name,
    "nameid": nameid,
    "rank": rank,
    "price_usd": priceUsd,
    "percent_change_24h": percentChange24H,
    "percent_change_1h": percentChange1H,
    "percent_change_7d": percentChange7D,
    "price_btc": priceBtc,
    "market_cap_usd": marketCapUsd,
    "volume24": volume24,
    "volume24a": volume24A,
    "csupply": csupply,
    "tsupply": tsupply == null ? null : tsupply,
    "msupply": msupply == null ? null : msupply,
  };
}

class Info {
  Info({
    this.coinsNum,
    this.time,
  });

  int coinsNum;
  int time;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    coinsNum: json["coins_num"],
    time: json["time"],
  );

  Map<String, dynamic> toJson() => {
    "coins_num": coinsNum,
    "time": time,
  };
}
