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
      appBar: AppBar(
        title: Text(
          "Cryptocurrency",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
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
                return ListView.builder(
                  itemCount: _cryptocoinData.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                              Navigator.pushNamed(context, '/info');
                          },
                          child: Container(
                            width: 360,
                            height: 90,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 360,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 10,
                                        offset: Offset(4, 4),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 20,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffc4c4c4),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "${_cryptocoinData.data[index].symbol}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 6,
                                        child: Text(
                                          "${_cryptocoinData.data[index].name}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Text(
                                          "${double.parse(_cryptocoinData.data[index].priceUsd).toDouble()}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                );
              } else if (!snapshot.hasData) {
                return Container();
              }
            }),
      ),
    );
  }
}
