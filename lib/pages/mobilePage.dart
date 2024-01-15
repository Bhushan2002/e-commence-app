import 'package:ecommerce/widgets/productCard.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../widgets/newLaunchBanner.dart';

class MobilPage extends StatefulWidget {
  const MobilPage({super.key});

  @override
  State<MobilPage> createState() => _MobilPageState();
}

class _MobilPageState extends State<MobilPage> {
  List brands = [
    "assets/brandLogos/samsung_882849.png",
    "assets/brandLogos/google pixel.png",
    'assets/brandLogos/apple-logo_747.png',
    "assets/brandLogos/Motorola-Logo.png",
    "assets/brandLogos/Redmi-by-Xiaomi-1.png",
    "assets/brandLogos/OnePlus (1).png",
    "assets/brandLogos/Realme (1).png",

  ];
  late VideoPlayerController _playerController;
  late Future<void> _initializeVideoFuture;
  @override
  void initState() {
    // TODO: implement initState

    _playerController = VideoPlayerController.networkUrl(Uri.parse(
        'https://www.apple.com/105/media/ww/iphone-15/2023/434c1226-dcdc-47be-ae28-6cb67a3a5a7c/anim/design/large_2x.mp4'));
    // _playerController = VideoPlayerController.asset('assets/galaxy-s23-ultra-highlights-design.mp4');
    _initializeVideoFuture = _playerController.initialize();
    _playerController.play();
    _playerController.setLooping(true);
    _playerController.setVolume(1);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 172,
              width: double.infinity,
              child: Text(
                "Top Mobile Brands",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 60,
                  fontWeight: FontWeight.w700,
                  overflow: TextOverflow.fade,
                  wordSpacing: 10.0,
                  letterSpacing: 3.5,
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: brands.length,
                itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(60)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(brands[index],height: 100,),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 2),
              child: FutureBuilder(
                future: _initializeVideoFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _playerController.value.aspectRatio,
                      child: VideoPlayer(_playerController),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
            newLaunchBanner(url:'https://images.unsplash.com/photo-1678911820864-e2c567c655d7?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            newLaunchBanner(url:'https://images.unsplash.com/photo-1697355359877-6aa55ec088a7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            newLaunchBanner(url:'https://smartwaykart.com/wp-content/uploads/2023/10/Screenshot-2023-10-10-205817-768x312.png'),


          ],
        ),
      ),
    );
  }
}


