import 'package:flutter/material.dart';
import 'package:flutter_thitima/main.dart';
import 'package:flutter_thitima/page/ProductDetail.dart';

class ShopCard extends StatefulWidget {
  ShopCard(
      {super.key,
      this.img,
      this.rating,
      this.name,
      this.price,
      this.colors,
      this.size,
      this.expand});
  String? img;
  String? colors;
  int? price;
  String? name;
  int? rating;
  double? size;
  List<Color>? expand;

  @override
  State<ShopCard> createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductDetail(
                    colors: widget.colors,
                    images: widget.img,
                    name: widget.name,
                    price: widget.price,
                    size: widget.size,
                    expand: widget.expand,
                  ))),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 180,
            height: 200,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Image.network(
                    "${widget.img}",
                    fit: BoxFit.cover,
                  )),
              Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  widget.rating! > 299
                      ? Icon(Icons.star)
                      : widget.rating! > 150
                          ? Icon(Icons.star_half)
                          : Icon(Icons.star_border_outlined),
                  Text('${widget.rating} Ratings')
                ],
              ),
              Text(
                '${widget.name}',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '฿ ${widget.price} THB',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(onPressed: () {}, child: Icon(Icons.add_circle)),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
