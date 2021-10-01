import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Image.asset(
        "images/homeicon.png",
        height: 45,
        width: 45,
      ),
      Image.asset(
        "images/dc.png",
        height: 45,
        width: 45,
      ),
      Image.asset(
        "images/tourist.png",
        height: 45,
        width: 45,
      ),
      Image.asset(
        "images/othersnav.png",
        height: 45,
        width: 45,
      ),
    ];
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    var hei2 = hei / 6;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("আমাদের শেরপুর"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Icon(
              Icons.notifications_outlined,
              size: 28,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Icon(
              Icons.info_outlined,
              size: 28,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.blue,
        items: items,
        height: 60,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: hei / 6,
              width: double.infinity,
              child: Carousel(
                showIndicator: false,
                images: [
                  Image.asset(
                    "images/spic1.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.asset("images/spic2.jpg", fit: BoxFit.cover),
                  Image.asset("images/spic3.jpg", fit: BoxFit.cover)
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: hei / 6,
              // color: Colors.red,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            elevation: 20,
                            color: Colors.white,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF2F2F2),
                                border: Border.all(width: 2,color: Colors.blue),

                              ),
                              height: hei2 / 3,
                              width: wid / 3.3,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "জেলা সম্পর্কিত",
                                    style: TextStyle(color: Colors.orange,fontSize: 15, fontWeight: FontWeight.w600),
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            elevation: 20,
                            color: Color(0xFFF2F2F2),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2,color: Colors.blue),

                              ),
                              height: hei2 / 3,

                              width: wid / 3.3,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text("বিভিন্ন প্রতিষ্ঠান",
                                    style: TextStyle(color: Colors.green,fontSize: 15, fontWeight: FontWeight.w600),)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            elevation: 20,
                            color: Color(0xFFF2F2F2),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2,color: Colors.blue),

                              ),
                              height: hei2 / 3,

                              width: wid / 3.3,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text("স্থানীয় সরকার",
                                    style: TextStyle(color: Colors.redAccent,fontSize: 15, fontWeight: FontWeight.w600),)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            elevation: 20,
                            color: Color(0xFFF2F2F2),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2,color: Colors.blue),

                              ),
                              height: hei2 / 3,

                              width: wid / 3.3,
                              child: TextButton(
                                  onPressed: () {}, child: Text("ই-সেবা",
                                style: TextStyle(color: Colors.indigo,fontSize: 15, fontWeight: FontWeight.w600),)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: SizedBox(
                            child: Card(
                              elevation: 20,
                              color: Color(0xFFF2F2F2),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2,color: Colors.blue),

                                ),
                                height: hei2 / 3,
                                width: wid / 3.3,
                                child: TextButton(
                                    onPressed: () {}, child: Text("সরকারি অফিস",
                                  style: TextStyle(color: Colors.brown,fontSize: 15, fontWeight: FontWeight.w600),)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            elevation: 20,
                            color: Color(0xFFF2F2F2),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2,color: Colors.blue),

                              ),
                              height: hei2 / 3,

                              width: wid / 3.3,
                              child: TextButton(
                                  onPressed: () {}, child: Text("আইন",
                                style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.w600),)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
