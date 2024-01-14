import 'package:ecommerce/widgets/productCard.dart';
import 'package:flutter/material.dart';

class MobilPage extends StatefulWidget {
  const MobilPage({super.key});

  @override
  State<MobilPage> createState() => _MobilPageState();
}

class _MobilPageState extends State<MobilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 172,
            width: double.infinity,
            child: Text(
              "Top Mobile Brands",
              style: TextStyle(
                fontFamily: " ",
                fontSize: 60,
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.fade,
                wordSpacing: 10.0,
                letterSpacing: 3.5,
              ),
            ),
          ),
          Container(
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
