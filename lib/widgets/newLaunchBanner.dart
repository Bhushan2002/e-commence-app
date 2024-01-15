import 'package:flutter/material.dart';


class newLaunchBanner extends StatefulWidget {
  newLaunchBanner({super.key,required this.url});
  String url;

  @override
  State<newLaunchBanner> createState() => _newLaunchBannerState();
}
class _newLaunchBannerState extends State<newLaunchBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 2.8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(widget.url,),fit: BoxFit.cover,)
        ),

        height: 300,
        width: double.infinity,
        // child: Image.network(),
      ),
    );
  }
}