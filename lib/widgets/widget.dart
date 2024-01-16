import 'package:ecommerce/pages/homePage.dart';
import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent, width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.orange, width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent, width: 2),
  ),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

Widget DevicesIcon(context, IconData iconData) {
  return Container(
    height: MediaQuery.of(context).size.height / 9,
    color: Colors.grey[300],
    width:  MediaQuery.of(context).size.height / 9,
    child: Icon(
      iconData,
      size: 70,
      color: Colors.black54,
    ),
  );
}

class ProductContainer extends StatefulWidget {
  ProductContainer({super.key,required this.imgUrl, required this.title});
  String imgUrl;
  String title;
  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Container(
      height: height / 4.05,
      width: width/ 4.55,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(widget.imgUrl,height: height/ 6.09,fit: BoxFit.cover,),
          Text(widget.title,style: TextStyle(fontFamily: "QuickSand",fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}





