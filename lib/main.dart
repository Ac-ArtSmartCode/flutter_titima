import 'package:flutter/material.dart';
import 'package:flutter_thitima/model/DetailModels.dart';
import 'package:flutter_thitima/model/ProductModels.dart';
import 'package:flutter_thitima/page/ShopCartPage.dart';
import 'package:flutter_thitima/widget/ShopCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({
    super.key,
  });

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<ProductModels> product = [
    ProductModels(
        img:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/4f8049c6-d329-4907-905b-df905c3da623/%E0%B8%A3%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%97%E0%B9%89%E0%B8%B2%E0%B8%9C%E0%B8%B9%E0%B9%89-dunk-low-retro-Q2Gtpp.png",
        name: "Nike Dunk Low Retro",
        price: 3700,
        rating: 300,
        colors: "Black & White",
        expand: [Colors.black, Colors.white],
        size: 40),
    ProductModels(
      img:
          "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/5831e66b-9c93-41e1-ae43-6f2dfa7a7fc3/%E0%B8%A3%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%97%E0%B9%89%E0%B8%B2%E0%B8%9C%E0%B8%B9%E0%B9%89%E0%B9%83%E0%B8%AA%E0%B9%88-%E0%B8%96%E0%B8%AD%E0%B8%94%E0%B8%87%E0%B9%88%E0%B8%B2%E0%B8%A2-air-jordan-1-low-flyease-SsT4HK.png",
      name: "Air Jordan 1 Low ",
      price: 5300,
      rating: 150,
      colors: "Purple & White",
      size: 39,
      expand: [Colors.deepPurple, Colors.white],
    ),
    ProductModels(
        img:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/3d956372-d4b7-4a2a-8846-35b17fdb0fd9/%E0%B8%A3%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%97%E0%B9%89%E0%B8%B2%E0%B8%9C%E0%B8%B9%E0%B9%89-air-max-excee-znll1p.png",
        name: "Nike Air Max Excee",
        price: 3700,
        colors: "PremuimGlod",
        rating: 350,
        expand: [Colors.yellow, Colors.black],
        size: 42.5),
    ProductModels(
        img:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ac7b16d2-e516-44dd-9dd4-8e8215c5ce63/%E0%B8%A3%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%97%E0%B9%89%E0%B8%B2-air-jordan-1-low-se-NDwhDt.png",
        name: "Air Jordan 1 Low SE",
        price: 3900,
        rating: 199,
        colors: "Bunny",
        expand: [Colors.orange, Colors.grey],
        size: 38),
    ProductModels(
        img:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/9eaef86b-679f-4f22-8393-c56675a28a7f/%E0%B8%A3%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%97%E0%B9%89%E0%B8%B2%E0%B8%9C%E0%B8%B9%E0%B9%89-air-force-1-07-VWCc04.png",
        name: "Nike Air Force 1 '07",
        price: 6900,
        rating: 190,
        colors: "RedAccent & White",
        expand: [Colors.redAccent, Colors.white],
        size: 43),
    ProductModels(
      img:
          "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/fe72e417-c4e4-4013-a0a8-d45b039adc71/%E0%B8%A3%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%97%E0%B9%89%E0%B8%B2%E0%B8%9C%E0%B8%B9%E0%B9%89-dunk-low-retro-premium-1RwJdW.png",
      name: "Nike Dunk Low Retro",
      price: 4300,
      rating: 230,
      size: 45,
      expand: [Colors.brown, Colors.white],
      colors: "Dark Brown",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(0),
                  foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.transparent)),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShopCartPage()))
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Badge(
                    label: Text("3"),
                    child: Icon(Icons.shopping_cart, color: Colors.black)),
              ),
            ),
          )
        ],
        backgroundColor: const Color.fromRGBO(221, 221, 221, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Center(
            child: Image.asset('assets/images/logo.png', width: 170),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 0.85,
              children: product
                  .map((e) => ShopCard(
                        img: e.img,
                        name: e.name,
                        price: e.price,
                        rating: e.rating,
                        colors: e.colors,
                        size: e.size,
                        expand: e.expand,
                      ))
                  .toList(),
            ),
          ),
          Container(
            height: 90,
            child: const Center(
              child: Text(
                "copyright",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          )
        ]),
      ),
      backgroundColor: const Color.fromRGBO(221, 221, 221, 1),
    );
  }
}
