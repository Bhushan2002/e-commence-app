import "package:ecommerce/pages/mobilePage.dart";
import "package:ecommerce/widgets/productCard.dart";
import "package:ecommerce/widgets/widget.dart";
import "package:flutter/material.dart";

bool tapped = true;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.grey[200],
              toolbarHeight: 70.0,
              actions: [
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(Icons.shopping_cart_outlined),
                  decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(18)),
                ),
              ],
              leading: IconButton(
                icon: Icon(
                  Icons.density_medium_outlined,
                  color: Colors.orange.withOpacity(0.7),
                ),
                onPressed: () {},
              )),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => MobilPage()));
                          },
                          child:
                              DevicesIcon(context, Icons.phone_iphone_sharp)),
                      DevicesIcon(context, Icons.laptop_mac_outlined),
                      DevicesIcon(context, Icons.watch),
                      DevicesIcon(context, Icons.headset),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Most popular Products...",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Quicksand"),
                  ),
                ),
                Container(
                  height: 420,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => PopularProductCard(
                        imgUrl:
                            "https://m.media-amazon.com/images/I/41IJe7fK2OL._SX300_SY300_QL70_FMwebp_.jpg",
                        title: "Samsung Watch 6 series"),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Best Deals for you...",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Quicksand"),
                ),
                Container(
                  height: 410,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => PopularProductCard(
                        imgUrl:
                            "https://m.media-amazon.com/images/I/41IJe7fK2OL._SX300_SY300_QL70_FMwebp_.jpg",
                        title: "Samsung Watch 6 series"),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
