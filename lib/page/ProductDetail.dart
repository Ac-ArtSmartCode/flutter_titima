import 'package:flutter/material.dart';
import 'package:flutter_thitima/model/DetailModels.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail(
      {super.key,
      this.colors,
      this.images,
      this.name,
      this.price,
      this.size,
      this.expand});
  String? images;
  String? colors;
  int? price;
  String? name;
  int? rating;
  double? size;
  List<Color>? expand;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  late double height, width;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          elevation: 0.4,
          title: Text("Basket"),
        ),
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                width: double.infinity,
                height: 570,
                decoration: const BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.name}",
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "฿ ${widget.price} ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          ElevatedButton(
                            onPressed: null,
                            child: Container(
                              width: 75,
                              padding: EdgeInsets.only(
                                left: 18,
                                right: 5,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${count}",
                                    style: const TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    height: 40,
                                    child: TextButton(
                                      onPressed: () => setState(() {
                                        count = count + 1;
                                      }),
                                      child: Icon(
                                        Icons.add_circle,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 200,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 100,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: widget.expand?[0],
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30))),
                                      child: Text("COLOR",
                                          style: TextStyle(
                                              fontSize: 20,
                                              backgroundColor: Colors.white)),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          color: widget.expand?[1],
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(30),
                                              bottomRight:
                                                  Radius.circular(30))),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${widget.colors}",
                                        style: TextStyle(
                                            fontSize: 20,
                                            backgroundColor: Colors.white),
                                      ),
                                    )
                                  ]),
                            ),
                            Container(
                              height: 200,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Size",
                                        style: TextStyle(fontSize: 20)),
                                    Text("${widget.size}",
                                        style: TextStyle(fontSize: 20))
                                  ]),
                            ),
                          ])
                    ]),
              ),
            ),
            Positioned(
              //<-- SEE HERE
              left: 90,
              top: 105,
              child: Container(
                width: 230,
                height: 180,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(50, 20),
                          blurRadius: 20,
                          spreadRadius: 20,
                          color: Color.fromARGB(147, 0, 0, 0))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Image.network(
                    widget.images.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
