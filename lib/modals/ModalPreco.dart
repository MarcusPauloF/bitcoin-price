// To parse this JSON data, do
//
//     final modalPreco = modalPrecoFromJson(jsonString);

import 'dart:convert';

import 'package:dio/dio.dart';

Map<String, ModalPreco> modalPrecoFromJson(String str) =>
    Map.from(json.decode(str))
        .map((k, v) => MapEntry<String, ModalPreco>(k, ModalPreco.fromJson(v)));

String modalPrecoToJson(Map<String, ModalPreco> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class ModalPreco {
  ModalPreco({
    this.the15M,
    this.last,
    this.buy,
    this.sell,
    this.symbol,
  });

  final double? the15M;
  final double? last;
  final double? buy;
  final double? sell;
  final String? symbol;

  factory ModalPreco.fromJson(Map<String, dynamic> json) => ModalPreco(
        the15M: json["15m"]?.toDouble(),
        last: json["last"]?.toDouble(),
        buy: json["buy"]?.toDouble(),
        sell: json["sell"]?.toDouble(),
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "15m": the15M,
        "last": last,
        "buy": buy,
        "sell": sell,
        "symbol": symbol,
      };
}
