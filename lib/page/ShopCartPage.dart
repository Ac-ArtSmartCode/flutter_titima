import 'package:flutter/material.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

import '../model/ProductModels.dart';

class ShopCartPage extends StatefulWidget {
  const ShopCartPage({super.key});

  @override
  State<ShopCartPage> createState() => _ShopCartPageState();
}

class _ShopCartPageState extends State<ShopCartPage> {
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
      colors: "Pruple & White",
      expand: [Colors.deepPurple, Colors.white],
      size: 39,
    ),
    ProductModels(
        img:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/3d956372-d4b7-4a2a-8846-35b17fdb0fd9/%E0%B8%A3%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%97%E0%B9%89%E0%B8%B2%E0%B8%9C%E0%B8%B9%E0%B9%89-air-max-excee-znll1p.png",
        name: "Nike Air Max Excee",
        price: 3700,
        colors: "PremuimGlod",
        expand: [Colors.yellow, Colors.black],
        rating: 350,
        size: 42.5),
  ];
  int? total;
  void initState() {
    super.initState();
    totalPrice();
  }

  totalPrice() {
    for (var result in product) {
      int sum = result.price!;
      setState(() {
        total = sum += sum;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "YOUR CART",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: product.length,
        itemBuilder: (context, index) {
          ProductModels products = product[index];

          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GFListTile(
                padding: EdgeInsets.only(right: 15),
                color: Colors.white,
                avatar: SizedBox(
                    height: 110,
                    width: 130,
                    child: Image.network(
                      "${products.img}",
                      fit: BoxFit.cover,
                    )),
                title: Text("${products.name}"),
                description: Row(children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  products.rating! > 299
                      ? Icon(Icons.star)
                      : products.rating! > 150
                          ? Icon(Icons.star_half)
                          : Icon(Icons.star_border_outlined),
                  Text('${products.rating} Ratings')
                ]),
                icon: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: Icon(
                      Icons.delete,
                    )),
                margin: EdgeInsets.symmetric(vertical: 10),
                subTitle: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("฿ ${products.price}"),
                  ],
                ),
              ));
        },
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.all(20),
          child: Container(
            height: 60,
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: MaterialButton(
              onPressed: null,
              child: Text(
                "- ${total}฿ Buy Now!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          )),
    );
  }
}
