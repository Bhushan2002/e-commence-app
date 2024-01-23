import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/data/imagesUrl.dart';
import 'package:ecommerce/data/mobile_data.dart';
import 'package:ecommerce/pages/ProductPage.dart';
import 'package:ecommerce/widgets/widget.dart';
import 'package:flutter/material.dart';

class SamsungPage extends StatefulWidget {
  const SamsungPage({super.key});

  @override
  State<SamsungPage> createState() => _SamsungPageState();
}

class _SamsungPageState extends State<SamsungPage> {
  @override
  List banner = [
    sBanner1,
    sBanner2,
    sBanner3,
    sBanner4,
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: height / 3.82,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Samsung Mobile',
                  style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: height / 16.97,
                      fontWeight: FontWeight.bold),
                )),
            CarouselSlider.builder(
              itemCount: banner.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = banner[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                // height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 2,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 100),
                autoPlayCurve: Curves.easeInCirc,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,

                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              child: Text(
                "What\'s New",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Quicksand",
                ),
              ),
            ),
            GridView(
              padding: EdgeInsets.all(15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0),
              children: samsungMobileData
                  .map(
                    (data) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductPage()));
                      },
                      child: ProductContainer(
                          imgUrl: data.imgUrl, title: data.prodName),
                    ),
                  )
                  .toList(),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildImage(String urlImage, index) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    color: Colors.grey[100],
    child: Hero(
      tag: "demo",
      child: Image.network(
        urlImage,
        fit: BoxFit.contain,
        height: 100,
        width: 410,
      ),
    ),
  );
}
