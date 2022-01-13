import 'dart:convert';

import 'package:http/http.dart' as http;

import 'convertercl.dart';

void main(List<String> arguments) async {
  Uri url = Uri.parse("https://nbu.uz/en/exchange-rates/json/");
  var data = await http.get(url);
  List<Converter> dataConverter = (jsonDecode(data.body) as List)
      .map((e) => Converter.fromJson(e))
      .toList();

  dataConverter.forEach((element) {
    print("1 UZS = ${element.cbPrice} ${element.code}");
  });
}
