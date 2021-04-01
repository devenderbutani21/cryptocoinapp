import 'package:cryptocoinapp/models/cryptocoin_model.dart';
import 'package:flutter/material.dart';
import 'package:cryptocoinapp/services/crypto_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<CryptoCoinModel> cryptoCoinData;

  @override
  void initState() {
    cryptoCoinData = CryptoService().fetchCoinValues();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.blue,
        child: FutureBuilder<CryptoCoinModel>(
            future: CryptoService().fetchCoinValues(),
            builder: (BuildContext context,
                AsyncSnapshot<CryptoCoinModel> snapshot) {
              if (snapshot.hasData) {
                CryptoCoinModel _cryptocoinData = snapshot.data;
                return Container(
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "${_cryptocoinData.data[0].symbol}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "${_cryptocoinData.data[0].name}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "${_cryptocoinData.data[0].priceUsd}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              } else if (!snapshot.hasData) {
                return Container();
              }
            }),
      ),
    );
  }
}
