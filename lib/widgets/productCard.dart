import 'package:ecommerce/pages/homePage.dart';
import 'package:flutter/material.dart';

class PopularProductCard extends StatefulWidget {
  PopularProductCard({super.key, required this.imgUrl, required this.title});
  String imgUrl;
  String title;
  String path = '';

  @override
  State<PopularProductCard> createState() => PopularProductCardState();
}

class PopularProductCardState extends State<PopularProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Stack(children: [
        Positioned(
          child: Image.network(
            widget.imgUrl,
            height: 320,
          ),
        ),
        Positioned(
          top: 320,
          left: 30,
          child: Container(
            width: 260,
            child: Text(
              widget.title,
              softWrap: true,
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Playfair",
                  overflow: TextOverflow.visible),
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: GestureDetector(
            onTap: () {
              setState(() {
                tapped = true;
              });
              // tapped = false;
            },
            onDoubleTap: () {
              setState(() {
                tapped = false;
              });
            },
            child: tapped
                ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 40,
                  )
                : Icon(
                    Icons.favorite_border,
                    size: 40,
                    color: Colors.grey,
                  ),
          ),
        )
      ]),
    );
  }
}
