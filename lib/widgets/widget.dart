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
    height: 95,
    color: Colors.grey[300],
    width: 95,
    child: Icon(
      iconData,
      size: 70,
      color: Colors.black54,
    ),
  );
}

