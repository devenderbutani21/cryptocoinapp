import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          color: Color(0xff366dd0),
        ),
        padding: const EdgeInsets.only(
          left: 16,
          right: 15,
          top: 30,
          bottom: 61,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 45.60),
            Container(
              width: 359,
              height: 60,
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
                              border: Border.all(
                                color: Color(0xff366dd0),
                                width: 4,
                              ),
                              color: Color(0x7f7f3a44),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            // Container(
            //   width: 380,
            //   height: 90,
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         width: 380,
            //         height: 90,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(16),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Color(0x19000000),
            //               blurRadius: 10,
            //               offset: Offset(4, 4),
            //             ),
            //           ],
            //           color: Colors.white,
            //         ),
            //         padding: const EdgeInsets.only(
            //           left: 15,
            //           right: 40,
            //           top: 19,
            //           bottom: 18,
            //         ),
            //         child: Row(
            //           mainAxisSize: MainAxisSize.min,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Text(
            //               "Your BTC Balance is",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 16,
            //                 fontFamily: "Roboto",
            //                 fontWeight: FontWeight.w700,
            //               ),
            //             ),
            //             SizedBox(width: 1),
            //             Text(
            //               "0.00233342",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 16,
            //                 fontFamily: "Roboto",
            //                 fontWeight: FontWeight.w700,
            //               ),
            //             ),
            //             SizedBox(width: 1),
            //             Text(
            //               "14.25",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 28,
            //                 fontFamily: "Roboto",
            //                 fontWeight: FontWeight.w700,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(height: 45.60),
            // Container(
            //   width: 331,
            //   height: 50,
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         width: 140,
            //         height: 50,
            //         child: Row(
            //           mainAxisSize: MainAxisSize.min,
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               width: 140,
            //               height: 50,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(8),
            //                 boxShadow: [
            //                   BoxShadow(
            //                     color: Color(0x19000000),
            //                     blurRadius: 10,
            //                     offset: Offset(4, 4),
            //                   ),
            //                 ],
            //                 color: Color(0xff92ff80),
            //               ),
            //               padding: const EdgeInsets.only(
            //                 left: 51,
            //                 right: 50,
            //                 top: 14,
            //                 bottom: 13,
            //               ),
            //               child: Row(
            //                 mainAxisSize: MainAxisSize.min,
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 children: [
            //                   Text(
            //                     "BUY",
            //                     textAlign: TextAlign.center,
            //                     style: TextStyle(
            //                       color: Colors.black,
            //                       fontSize: 20,
            //                       fontFamily: "Roboto",
            //                       fontWeight: FontWeight.w700,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(width: 51),
            //       Container(
            //         width: 140,
            //         height: 50,
            //         child: Row(
            //           mainAxisSize: MainAxisSize.min,
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               width: 140,
            //               height: 50,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(8),
            //                 boxShadow: [
            //                   BoxShadow(
            //                     color: Color(0x19000000),
            //                     blurRadius: 10,
            //                     offset: Offset(4, 4),
            //                   ),
            //                 ],
            //                 color: Color(0xffff2525),
            //               ),
            //               padding: const EdgeInsets.only(
            //                 top: 14,
            //                 bottom: 13,
            //               ),
            //               child: Row(
            //                 mainAxisSize: MainAxisSize.min,
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 children: [
            //                   Text(
            //                     "SELL",
            //                     textAlign: TextAlign.center,
            //                     style: TextStyle(
            //                       color: Colors.black,
            //                       fontSize: 20,
            //                       fontFamily: "Roboto",
            //                       fontWeight: FontWeight.w700,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
