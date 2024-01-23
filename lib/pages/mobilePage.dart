import 'package:ecommerce/data/imagesUrl.dart';
import 'package:ecommerce/pages/brandPages/samsungPage.dart';
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
    samsungLogo,
    googlePixelLogo,
    appleLogo,
    motorolaLogo,
    redmiLogo,
    oneplusLogo,
    realmeLogo,
  ];
  late VideoPlayerController _playerController;
  late Future<void> _initializeVideoFuture;
  @override
  void initState() {
    // TODO: implement initState

    _playerController = VideoPlayerController.networkUrl(Uri.parse(
        videoBanner));
    // _playerController = VideoPlayerController.asset('assets/galaxy-s23-ultra-highlights-design.mp4');
    _initializeVideoFuture = _playerController.initialize();
    _playerController.play();
    _playerController.setLooping(true);
    _playerController.setVolume(1);

    super.initState();
  }
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
              height: height / 4.44,
              width: double.infinity,
              child: Text(
                "Top Mobile Brands",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: height / 12.73,
                  fontWeight: FontWeight.w700,
                  overflow: TextOverflow.fade,
                  wordSpacing: 5,
                  letterSpacing: 3.5,
                ),
              ),
            ),
            Container(
              height: height / 7.64,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: brands.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SamsungPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: height / 8.64,
                      width: height / 8.64,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(brands[index],height: height / 7.64,),
                      ),
                    ),
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
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
            newLaunchBanner(url: banner1),
            newLaunchBanner(url:banner2),
            newLaunchBanner(url:banner3),


          ],
        ),
      ),
    );
  }
}


