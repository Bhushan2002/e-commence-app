import 'package:ecommerce/data/imagesUrl.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/mobile_data.dart';
import '../widgets/widget.dart';

List<Widget> deviceStorage = <Widget>[
  Padding(
    padding: EdgeInsets.all(20),
    child: Text(
      '8GB + 128GB',
      style: TextStyle(fontSize: 16),
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(20),
    child: Text(
      '8GB + 256GB',
      style: TextStyle(fontSize: 16),
    ),
  ),
];

List productImage= [
  'https://m.media-amazon.com/images/S/aplus-media-library-service-media/b0c469fa-257b-421c-8af2-a635f37af461.__CR0,0,1464,600_PT0_SX1464_V1___.jpg',
  'https://m.media-amazon.com/images/S/aplus-media-library-service-media/9c09a16b-447c-4244-b19b-2dfba1dc92a4.__CR0,0,1464,600_PT0_SX1464_V1___.jpg',
  'https://m.media-amazon.com/images/S/aplus-media-library-service-media/e145d06c-4a37-4b15-a919-4e829bb5798f.__CR0,0,1464,600_PT0_SX1464_V1___.jpg',
  'https://m.media-amazon.com/images/S/aplus-media-library-service-media/692a2d8b-9cbb-4922-9c46-d76efda4843d.__CR0,0,1464,600_PT0_SX1464_V1___.jpg'
];

List<PoliciesContainer> policies = [
  PoliciesContainer(
      text: "7 days replacement", icon: Icons.find_replace_rounded),
  PoliciesContainer(text: "Free Delivery", icon: FontAwesomeIcons.truck),
  PoliciesContainer(
      text: "1 Year Warranty", icon: FontAwesomeIcons.shieldHalved),
  PoliciesContainer(text: "Pay on Delivery", icon: FontAwesomeIcons.moneyBill),
];

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<bool> _selectedStorage = <bool>[true, false];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Hero(
      tag: "demo",
      child: Scaffold(backgroundColor: Colors.grey[200],
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: height / 38.2 ),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Samsung Galaxy S21 FE ",
                  style: TextStyle(
                      fontFamily: quickSand,
                      fontSize: height / 30.56,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Center(
                  child: Container(
                    // product image
                    color: Colors.grey,
                    height: height / 1.91,
                    width: width / 1.031,
                    child: Image.network(
                      'https://m.media-amazon.com/images/I/81cHpJNr07L._SL1500_.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 8.0),
                child: ToggleButtons(
                  onPressed: (int index) {
                    setState(() {
                      // The button that is tapped is set to true, and the others to false.
                      for (int i = 0; i < _selectedStorage.length; i++) {
                        _selectedStorage[i] = i == index;
                      }
                    });
                  },
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  selectedBorderColor: Colors.blue[700],
                  selectedColor: Colors.white,
                  fillColor: Colors.blue[400],
                  color: Colors.blue[400],
                  isSelected: _selectedStorage,
                  children: deviceStorage,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10),

                // price and discount
                child: Row(
                  children: [
                    // Text('Price: ',style: TextStyle(fontSize: 24),),
                    Text(
                      '31,999',
                      style: TextStyle(
                        fontSize: height / 27.28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '-31%',
                      style: TextStyle(color: Colors.redAccent, fontSize: height / 38.2),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 38.2),
                child: SizedBox(
                  height: height / 6.36,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: policies
                        .map((data) =>
                            PoliciesContainer(text: data.text, icon: data.icon))
                        .toList(),
                  ),
                ),
              ),
              Container(
                // buy and add to cart Buttons
                margin: EdgeInsets.only(top: height / 38.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: height / 15.28,
                      width: width / 2.023,
                      child: Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                              fontSize: height / 38.2,
                              fontFamily: quickSand,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: height / 15.28,
                      width: width / 2.023,
                      child: Center(
                        child: Text(
                          "Buy now",
                          style: TextStyle(
                              fontSize: height / 38.2,
                              fontFamily: quickSand,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                  // description
                child: ListView(
                  children: productImage.map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(e),
                  )).toList(),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                )
                // Image.network('https://m.media-amazon.com/images/S/aplus-media-library-service-media/b0c469fa-257b-421c-8af2-a635f37af461.__CR0,0,1464,600_PT0_SX1464_V1___.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PoliciesContainer extends StatelessWidget {
  PoliciesContainer({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124,
      width: 120,
      child: Card(
        color: Colors.grey[200],
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                icon,
                color: Colors.blue[800],
              ),
              Text(
                text,
                style: TextStyle(
                    color: Colors.blue[400], fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
                // softWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
