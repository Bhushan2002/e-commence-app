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

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white60,
      child: Stack(children: [
        Positioned(
          child: Image.network(
            widget.imgUrl,
            height: height / 2.38,
          ),
        ),
        Positioned(
          top: height / 2.38,
          left: width / 12,
          child: Container(
            width: width / 1.38,
            child: Text(
              widget.title,
              softWrap: true,
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Quicksand",
                  overflow: TextOverflow.visible),
            ),
          ),
        ),
        Positioned(
          right: width / 18,
          top: width / 18,
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
                    size: height / 19.1 ,
                  )
                : Icon(
                    Icons.favorite_border,
                    size: height / 19.1,
                    color: Colors.grey,
                  ),
          ),
        )
      ]),
    );
  }
}
