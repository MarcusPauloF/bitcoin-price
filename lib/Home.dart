import 'package:bitcoin_price/modals/modalPreco.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _preco = "0";
  _recuperarPreco() async {
    BaseOptions options = BaseOptions(
        baseUrl: 'https://blockchain.info/',
        receiveDataWhenStatusError: true,
        connectTimeout: 60 * 1000, //60 segundos
        receiveTimeout: 60 * 1000 //60 segundos
        );
    var dio = Dio(options);
    final response = await dio.request(
      'https://blockchain.info/ticker',
      options: Options(method: 'GET'),
    );

    ModalPreco preco = ModalPreco.fromJson(response.data["BRL"]);
    setState(() {
      _preco = preco.buy.toString();
    });

    print("Resposta: ${preco.toJson()}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(30),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/bitcoin.png"),
            Padding(
              padding: EdgeInsets.only(bottom: 30, top: 30),
              child: Text(
                "R\$" + _preco,
                style: TextStyle(fontSize: 35),
              ),
            ),
            TextButton(
              onPressed: _recuperarPreco,
              child: Text(
                "Atualizar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.orange),
            )
          ],
        ),
      ),
    ));
  }
}
