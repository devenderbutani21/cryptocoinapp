import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptocoinapp/models/cryptocoin_model.dart';
import 'package:cryptocoinapp/services/crypto_service.dart';

class InfoScreen extends StatefulWidget {
  // int index;
  //
  // InfoScreen(
  //   this.index,
  // );

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
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
        width: double.maxFinite,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff366dd0),
        ),
        padding: const EdgeInsets.only(
          left: 16,
          right: 15,
          top: 10,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Container(
              width: 380,
              height: 60,
              child: Row(
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
                        "BTC",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 53),
                  Text(
                    "Bitcoin",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 53),
                  Text(
                    "36,000",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 270,
              height: 32,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "1H",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(width: 40),
                  Text(
                    "1D",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(width: 40),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffc4c4c4),
                    ),
                    child: Center(
                      child: Text(
                        "1W",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  Text(
                    "1Y",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(width: 40),
                  Text(
                    "ALL",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 380,
              height: 240,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 380,
                    height: 240,
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
                    child: Stack(
                      children: [
                        Positioned(
                          left: 11,
                          top: 32,
                          child: Text(
                            "60,000",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9,
                          top: 111,
                          child: Text(
                            "55,000",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9,
                          top: 187,
                          child: Text(
                            "50,000",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 77,
                          top: 39.50,
                          child: Container(
                            width: 295,
                            height: 164,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 90,
              width: 380,
              padding: EdgeInsets.all(
                12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 10,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Your BTC Balance is',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '0.002545',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '14.25\$',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        'BUY',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        'SELL',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
