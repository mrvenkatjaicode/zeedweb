import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/imagetext.dart';

class NewDesktop extends StatefulWidget {
  const NewDesktop({super.key});

  @override
  State<NewDesktop> createState() => _NewDesktopState();
}

class _NewDesktopState extends State<NewDesktop> {
  bool animate = false;
  int currentPos = 0;

  Color maincolor = const Color(0xffFC772A);
  VideoPlayerController? _controller;
  bool isHoverone = false;
  bool isHovertwo = false;
  bool isHoverthree = false;

  List<Widget> cslider = [
    FittedBox(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFF0D3).withOpacity(0.21),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/khazana.jpeg",
                  height: 150,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Flexi O Flexi",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(". 100% No V.A Charges!"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(". 50% off on one month installment."),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
    FittedBox(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFF0D3).withOpacity(0.21),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/prince.jpeg",
                  height: 150,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Flexi O Flexi",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(". 100% No V.A Charges!"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(". 50% off on one month installment."),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
    FittedBox(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFF0D3).withOpacity(0.21),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/lalitha.jpeg",
                  height: 150,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Flexi O Flexi",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(". 100% No V.A Charges!"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(". 50% off on one month installment."),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  ];
  @override
  void initState() {
    super.initState();
    startvideo();
    startAnimation();
  }

  startvideo() {
    _controller = VideoPlayerController.asset("assets/mainvideo.MP4");
    _controller!.addListener(() {
      setState(() {});
    });
    _controller!.setVolume(0);
    _controller!.setPlaybackSpeed(0.2);
    _controller!.setLooping(true);
    _controller!.initialize().then((value) {
      setState(() {});
    });
    _controller!.play();
    // Ensure the first frame is shown after the video is initialized
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Transform.scale(
                    scale: 1.11,
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: VideoPlayer(_controller!)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 212, top: 20, bottom: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 300,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 5,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            RichText(
                              text: TextSpan(
                                  text:
                                      "Starting a jewellery saving plan can\nbe much easy, All jewelery saving plan\n",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 28,
                                      color: Colors.white),
                                  children: [
                                    const TextSpan(
                                      text: "in ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 28,
                                          color: Colors.white),
                                    ),
                                    TextSpan(
                                      text: "#1App",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 28,
                                          color: maincolor),
                                    )
                                  ]),
                            ),
                            const SizedBox(
                              height: 27,
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: isHoverone ? 5 : 0,
                                top: isHoverone ? 5 : 0,
                                child: SizedBox(
                                  width: 208,
                                  height: 58,
                                  child: Card(
                                    color: Colors.orange,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Download Zeed",
                                        style: TextStyle(
                                            color: Color(0xffFC772A),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (f) {
                                  setState(() {
                                    isHoverone = true;
                                  });
                                },
                                onExit: (f) {
                                  setState(() {
                                    isHoverone = false;
                                  });
                                },
                                child: SizedBox(
                                  width: 208,
                                  height: 58,
                                  child: Card(
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Download Zeed",
                                        style: TextStyle(
                                            color: Color(0xffFC772A),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  AnimatedPositioned(
                    top: 180,
                    left: animate ? 212 : -300,
                    duration: const Duration(seconds: 1),
                    child: RichText(
                      text: TextSpan(
                          text: "Save\n",
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 62,
                              color: Colors.white),
                          children: [
                            TextSpan(
                              text: "Beyond Limits",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 62,
                                  color: maincolor),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
              /* Container(
                //  height: 910,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/head.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 212, top: 20, bottom: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 150,
                          ),
                          RichText(
                            text: TextSpan(
                                text: "Save\n",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 62,
                                    color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: "Beyond Limits",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 62,
                                        color: maincolor),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 5,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RichText(
                            text: TextSpan(
                                text:
                                    "Starting a jewellery saving plan can\nbe much easy, All jewelery saving plan\n",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 28,
                                    color: Colors.white),
                                children: [
                                  const TextSpan(
                                    text: "in ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 28,
                                        color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: "#1App",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 28,
                                        color: maincolor),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            height: 27,
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 58,
                        width: 208,
                        child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "Download Zeed",
                              style: TextStyle(
                                  color: maincolor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ), */
              Container(
                width: MediaQuery.of(context).size.width,
                // height: 749,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/gradientone.png"),
                    fit: BoxFit.fill,
                  ),
                  // borderRadius:
                  //     BorderRadius.vertical(top: Radius.elliptical(150, 30))
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 100,
                      right: 20,
                      child: Image.asset(
                        "assets/mobile.jpeg",
                        height: 600,
                        width: 350,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                //flex: 4,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  // color: Colors.yellow.shade100,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 150),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        const Text(
                                          "Thoughtful saving plans from\nyour favourite Jewellers.",
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 33,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xffFFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(21),
                                              border:
                                                  Border.all(color: maincolor)),
                                          child: const Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Text(
                                              "The traditional way of starting a saving plan with the Jewellers is\nslow, has a lot of friction and you have to visit the store from\nplanning to purchase every month.",
                                              style: TextStyle(
                                                  height: 1.5,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 41,
                                        ),
                                        const Text(
                                          "zeed brings together the best of Saving plans from the best of Jewellers at a click of a button",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 31,
                                        ),
                                        const Text(
                                          "We’ve built our platform to take your savings Journey beyond the traditional way. Your entire Gold saving Journey is managed on one platform",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  // flex: 2,
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 50),
                                        child: CarouselSlider(
                                            options: CarouselOptions(
                                                enlargeCenterPage: true,
                                                viewportFraction: 0.3,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    2,
                                                autoPlay: true,
                                                onPageChanged: (index, reason) {
                                                  setState(() {
                                                    currentPos = index;
                                                  });
                                                }),
                                            items: cslider),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(),
                                ],
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(53.0),
                                child: Text(
                                  "We are serious about you saving Plan.",
                                  style: TextStyle(
                                      fontSize: 33,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              FittedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    SizedBox(
                                      height: 113,
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                //  color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            height: 113,
                                            width: 111,
                                            child:
                                                Image.asset("assets/101.png"),
                                          ),
                                          const SizedBox(
                                            width: 23,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: Text(
                                                  "Max Trust",
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: Text(
                                                  "Your payment toward saving plan\nis paid directly to the Jeweller\nand saved in 22k Gold.",
                                                  style: TextStyle(
                                                      height: 1.5,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    SizedBox(
                                      height: 113,
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                // color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            height: 113,
                                            width: 111,
                                            child:
                                                Image.asset("assets/102.png"),
                                          ),
                                          const SizedBox(
                                            width: 23,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: Text(
                                                  "Max Security",
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: Text(
                                                  "Means bank graded security\nand ISO Complainces",
                                                  style: TextStyle(
                                                      height: 1.5,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    SizedBox(
                                      height: 113,
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                //color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            height: 113,
                                            width: 111,
                                            child:
                                                Image.asset("assets/103.png"),
                                          ),
                                          const SizedBox(
                                            width: 23,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: Text(
                                                  "Max Safety",
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: Text(
                                                  "Every installment you paid till\nnow is insured.",
                                                  style: TextStyle(
                                                      height: 1.5,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "How zeed works.",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 54,
              ),
              SizedBox(
                height: 640,
                child: ScrollTransformView(
                  children: [
                    ScrollTransformItem(
                      builder: (scrollOffset) {
                        final offScreenPercentage =
                            min(scrollOffset / screenSize.height, 1.0);
                        return SizedBox(
                          width: screenSize.width -
                              (screenSize.width * 0.5 * offScreenPercentage),
                          height: screenSize.height -
                              (screenSize.height * 0.2 * offScreenPercentage),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 163, top: 38, right: 63, bottom: 38),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(children: [
                                            Text(
                                              ' ',
                                              style: TextStyle(
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 1
                                                  ..color = Colors.black,
                                              ),
                                            ),
                                            const Text(
                                              ' ',
                                              style: TextStyle(
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ]),
                                          const SizedBox(
                                            height: 50,
                                          ),
                                          const Text(
                                            " ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/011.png",
                                      // width: MediaQuery.of(context).size.width /
                                      //     6.55,
                                      // height: 484,
                                    ),
                                  ],
                                ),
                                /* const Text(
                              "Start your plan.",
                              style: TextStyle(
                                  color: Color(0xffDEDEDE),
                                  fontSize: 54,
                                  fontWeight: FontWeight.w700),
                            ) */
                              ],
                            ),
                          ),
                        );
                      },
                      offsetBuilder: (scrollOffset) {
                        final offScreenPercentage =
                            min(scrollOffset / screenSize.height, 1.0);
                        final hightShrinkageAmount =
                            (screenSize.height * 0.2 * offScreenPercentage);
                        final bool startMovingImage =
                            scrollOffset >= screenSize.height * 0.8;
                        final double onScreenOffset =
                            scrollOffset + hightShrinkageAmount / 2;
                        return Offset(
                            0,
                            !startMovingImage
                                ? onScreenOffset
                                : onScreenOffset -
                                    (scrollOffset - screenSize.height * 0.8));
                      },
                    ),
                    ScrollTransformItem(
                      offsetBuilder: (scrollOffset) =>
                          Offset(0, -screenSize.height),
                      builder: (scrollOffset) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 630,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 163, top: 38, right: 63, bottom: 38),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(children: [
                                            Text(
                                              '01.',
                                              style: TextStyle(
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 1
                                                  ..color = Colors.black,
                                              ),
                                            ),
                                            const Text(
                                              '01.',
                                              style: TextStyle(
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ]),
                                          const SizedBox(
                                            height: 50,
                                          ),
                                          const Text(
                                            "Look for your favorite\nSavings plan and start your\nplan.",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(),
                                  ],
                                ),
                                /* const Text(
                            "Start your plan.",
                            style: TextStyle(
                                color: Color(0xffDEDEDE),
                                fontSize: 54,
                                fontWeight: FontWeight.w700),
                          ) */
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    ScrollTransformItem(
                      builder: (scrollOffset) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 630,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 163, top: 38, right: 63, bottom: 38),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(children: [
                                            Text(
                                              '02.',
                                              style: TextStyle(
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 1
                                                  ..color = Colors.black,
                                              ),
                                            ),
                                            const Text(
                                              '02.',
                                              style: TextStyle(
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ]),
                                          const SizedBox(
                                            height: 50,
                                          ),
                                          const Text(
                                            "Pay for 11 months in a\nclick of a button.",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/012.png",
                                      // width: MediaQuery.of(context).size.width /
                                      //     6.55,
                                      // height: 484,
                                    ),
                                  ],
                                ),
                                /* const Text(
                            "Start your plan.",
                            style: TextStyle(
                                color: Color(0xffDEDEDE),
                                fontSize: 54,
                                fontWeight: FontWeight.w700),
                          ) */
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    ScrollTransformItem(
                      builder: (scrollOffset) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 630,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 163, top: 38, right: 63, bottom: 38),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(children: [
                                            Text(
                                              '03.',
                                              style: TextStyle(
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 1
                                                  ..color = Colors.black,
                                              ),
                                            ),
                                            const Text(
                                              '03.',
                                              style: TextStyle(
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ]),
                                          const SizedBox(
                                            height: 50,
                                          ),
                                          const Text(
                                            "Buy Jewelry at\nyour favorite store with\nyour savings plan.",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/013.png",
                                      // width: MediaQuery.of(context).size.width /
                                      //     6.55,
                                      // height: 484,
                                    ),
                                  ],
                                ),
                                /* const Text(
                            "Start your plan.",
                            style: TextStyle(
                                color: Color(0xffDEDEDE),
                                fontSize: 54,
                                fontWeight: FontWeight.w700),
                          ) */
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 65,
              ),
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 300,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage("assets/gradienttwo.png"),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.all(53.0),
//                       child: Text(
//                         "We are serious about you saving Plan.",
//                         style: TextStyle(
//                             fontSize: 33, fontWeight: FontWeight.w700),
//                       ),
//                     ),
//                     FittedBox(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           const SizedBox(
//                             width: 30,
//                           ),
//                           SizedBox(
//                             height: 113,
//                             child: Row(
//                               children: [
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       //  color: Colors.red,
//                                       borderRadius: BorderRadius.circular(30)),
//                                   height: 113,
//                                   width: 111,
//                                   child: Image.asset("assets/101.png"),
//                                 ),
//                                 const SizedBox(
//                                   width: 23,
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: const [
//                                     Padding(
//                                       padding: EdgeInsets.all(2.0),
//                                       child: Text(
//                                         "Max Trust",
//                                         style: TextStyle(
//                                             fontSize: 22,
//                                             fontWeight: FontWeight.w700),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets.all(2.0),
//                                       child: Text(
//                                         "Your payment toward saving plan\nis paid directly to the Jeweller\nand saved in 22k Gold.",
//                                         style: TextStyle(
//                                             height: 1.5,
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 30,
//                           ),
//                           SizedBox(
//                             height: 113,
//                             child: Row(
//                               children: [
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       // color: Colors.red,
//                                       borderRadius: BorderRadius.circular(30)),
//                                   height: 113,
//                                   width: 111,
//                                   child: Image.asset("assets/102.png"),
//                                 ),
//                                 const SizedBox(
//                                   width: 23,
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: const [
//                                     Padding(
//                                       padding: EdgeInsets.all(2.0),
//                                       child: Text(
//                                         "Max Security",
//                                         style: TextStyle(
//                                             fontSize: 22,
//                                             fontWeight: FontWeight.w700),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets.all(2.0),
//                                       child: Text(
//                                         "Means bank graded security\nand ISO Complainces",
//                                         style: TextStyle(
//                                             height: 1.5,
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 30,
//                           ),
//                           SizedBox(
//                             height: 113,
//                             child: Row(
//                               children: [
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       //color: Colors.red,
//                                       borderRadius: BorderRadius.circular(30)),
//                                   height: 113,
//                                   width: 111,
//                                   child: Image.asset("assets/103.png"),
//                                 ),
//                                 const SizedBox(
//                                   width: 23,
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: const [
//                                     Padding(
//                                       padding: EdgeInsets.all(2.0),
//                                       child: Text(
//                                         "Max Safety",
//                                         style: TextStyle(
//                                             fontSize: 22,
//                                             fontWeight: FontWeight.w700),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets.all(2.0),
//                                       child: Text(
//                                         "Every installment you paid till\nnow is insured.",
//                                         style: TextStyle(
//                                             height: 1.5,
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 30,
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//
//
//
//
//
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/gradientbig.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 80, bottom: 80, left: 120, right: 120),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(59),
                        color: const Color(0xffFFF0D3).withOpacity(0.21),
                      ),
                      margin: const EdgeInsets.only(top: 67, bottom: 67),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                //width: 698,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "One place for\neverything.",
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 5,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: maincolor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "Juggling multiple Jewellery stores to find the best saving plan to start is\nhard. zeed gives you a single real-time view of all the best Jewellery\nsavings plans near you.",
                                      style: TextStyle(
                                          height: 1.5,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                "assets/one.png",
                                width: MediaQuery.of(context).size.width / 6.5,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 152,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/time.png",
                                width: MediaQuery.of(context).size.width / 4.7,
                              ),
                              SizedBox(
                                //width: MediaQuery.of(context).size.width / 2.5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Get your time back.",
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 5,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: maincolor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "Starting a new saving plan is a day-long work.\nWe often procrastinate for months to start a new plan.\nzeed senses these practices of you, so we brought your favourite\nJewellery store to your hands.",
                                      style: TextStyle(
                                          height: 1.5,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 152,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                // width: 634,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Invest.",
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 5,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: maincolor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "Gold is a Powerful passive investment strategy.\nSaving Gold as Jewellery has got a few drawbacks. Which is not the\ncase with zeed.\nAll additional costs such as making charges and wastages are\nwaived off upto 18%.\nYou only pay for the amount of gold you save. Also, you don't have to pay\nthe capital gain tax.",
                                      style: TextStyle(
                                          height: 1.5,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                "assets/goldbag.png",
                                width: MediaQuery.of(context).size.width / 6.1,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 152,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/goldshild.png",
                                width: MediaQuery.of(context).size.width / 4.7,
                              ),
                              SizedBox(
                                //width: MediaQuery.of(context).size.width / 2.5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Every single penny is\nInsured.",
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 5,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: maincolor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "Starting a new saving plan is a day-long work.\nWe often procrastinate for months to start a new plan.\nzeed senses these practices of you, so we brought your favourite\nJewellery store to your hands.",
                                      style: TextStyle(
                                          height: 1.5,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 152,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                // width: 634,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Invest.",
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 5,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: maincolor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      "Visit the store only on the auspicious day of buying your Jewellery. \nYou can easily redeem as easily as you save. Visit the billing counter\nand tell them your savings plan number. The executive will check\nyour credentials in a minute and you are good to purchase your\nfavourite Jewellery.",
                                      style: TextStyle(
                                          height: 1.5,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                "assets/giftimage.png",
                                width: MediaQuery.of(context).size.width / 6.1,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 76, right: 76),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/gradienthor.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 46,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          ImageTextWidget(
                              imagename: "assets/18%.png",
                              imagedescription:
                                  "Zero wastage and\nmaking charges"),
                          ImageTextWidget(
                              imagename: "assets/18%.png",
                              imagedescription: "First Month\nInstalment free"),
                          ImageTextWidget(
                              imagename: "assets/18%.png",
                              imagedescription:
                                  "Free gold coins\nand freebies"),
                          ImageTextWidget(
                              imagename: "assets/calandericon.png",
                              imagedescription: "Cancel\nanytime"),
                        ],
                      ),
                      const SizedBox(
                        height: 46,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          ImageTextWidget(
                              imagename: "assets/handmoneyrefreshicon.png",
                              imagedescription: "100% Refund\n "),
                          ImageTextWidget(
                              imagename: "assets/triicon.png",
                              imagedescription:
                                  "Bis Hallmarked\nCertified 916 Jewellery"),
                          ImageTextWidget(
                              imagename: "assets/docverifiedicon.png",
                              imagedescription: "Free\nInsurance"),
                          ImageTextWidget(
                              imagename: "assets/rewardicon.png",
                              imagedescription: "CRewarding\nPurchase Plan"),
                        ],
                      ),
                      const SizedBox(
                        height: 46,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 52,
              ),
              // SizedBox(
              //   height: 510,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       MouseRegion(
              //         onEnter: (f) {
              //           setState(() {
              //             isHoverone = true;
              //           });
              //         },
              //         onExit: (f) {
              //           setState(() {
              //             isHoverone = false;
              //           });
              //         },
              //         child: AnimatedContainer(
              //           duration: const Duration(milliseconds: 200),
              //           height: isHoverone ? 500 : 483,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             border: Border.all(color: Colors.grey),
              //             color: Colors.white,
              //             boxShadow: [
              //               isHoverone
              //                   ? const BoxShadow(
              //                       color: Colors.grey,
              //                       blurRadius: 5.0,
              //                       spreadRadius: 5.0,
              //                       offset: Offset(5.0,
              //                           5.0), // shadow direction: bottom right
              //                     )
              //                   : const BoxShadow()
              //             ],
              //           ),
              //           width: MediaQuery.of(context).size.width / 4.07,
              //           child: Padding(
              //             padding: const EdgeInsets.all(33.0),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Image.asset("assets/email.png"),
              //                 const Text(
              //                   "Live Gold rates",
              //                   style: TextStyle(
              //                       fontWeight: FontWeight.w700, fontSize: 24),
              //                 ),
              //                 const Text(
              //                   "Visit the store only on the auspicious day of buying your Jewellery.  You can easily redeem as easily as you save. Visit the billing counter and tell them your savings plan number. The executive will check your credentials in a minute and you are good to purchase your favourite Jewellery.",
              //                   textAlign: TextAlign.center,
              //                   style: TextStyle(
              //                       height: 1.5,
              //                       fontWeight: FontWeight.w400,
              //                       fontSize: 16),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //       const SizedBox(
              //         width: 20,
              //       ),
              //       MouseRegion(
              //         onEnter: (f) {
              //           setState(() {
              //             isHovertwo = true;
              //           });
              //         },
              //         onExit: (f) {
              //           setState(() {
              //             isHovertwo = false;
              //           });
              //         },
              //         child: AnimatedContainer(
              //           duration: const Duration(milliseconds: 200),
              //           height: isHovertwo ? 500 : 483,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             border: Border.all(color: Colors.grey),
              //             color: Colors.white,
              //             boxShadow: [
              //               isHovertwo
              //                   ? const BoxShadow(
              //                       color: Colors.grey,
              //                       blurRadius: 5.0,
              //                       spreadRadius: 5.0,
              //                       offset: Offset(5.0,
              //                           5.0), // shadow direction: bottom right
              //                     )
              //                   : const BoxShadow()
              //             ],
              //           ),
              //           width: MediaQuery.of(context).size.width / 4.07,
              //           child: Padding(
              //             padding: const EdgeInsets.all(33.0),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Image.asset("assets/email.png"),
              //                 const Text(
              //                   "Marketplace",
              //                   style: TextStyle(
              //                       fontWeight: FontWeight.w700, fontSize: 24),
              //                 ),
              //                 const Text(
              //                   "Instant access to all the savings schemes near you Never visit the store to start or cancel the saving plan you can do everything in our app anytime.",
              //                   textAlign: TextAlign.center,
              //                   style: TextStyle(
              //                       height: 1.5,
              //                       fontWeight: FontWeight.w400,
              //                       fontSize: 16),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //       const SizedBox(
              //         width: 20,
              //       ),
              //       MouseRegion(
              //         onEnter: (f) {
              //           setState(() {
              //             isHoverthree = true;
              //           });
              //         },
              //         onExit: (f) {
              //           setState(() {
              //             isHoverthree = false;
              //           });
              //         },
              //         child: AnimatedContainer(
              //           duration: const Duration(milliseconds: 200),
              //           height: isHoverthree ? 500 : 483,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             border: Border.all(color: Colors.grey),
              //             color: Colors.white,
              //             boxShadow: [
              //               isHoverthree
              //                   ? const BoxShadow(
              //                       color: Colors.grey,
              //                       blurRadius: 5.0,
              //                       spreadRadius: 5.0,
              //                       offset: Offset(5.0,
              //                           5.0), // shadow direction: bottom right
              //                     )
              //                   : const BoxShadow()
              //             ],
              //           ),
              //           width: MediaQuery.of(context).size.width / 4.07,
              //           child: Padding(
              //             padding: const EdgeInsets.all(33.0),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Image.asset("assets/email.png"),
              //                 const Text(
              //                   "Redeem",
              //                   style: TextStyle(
              //                       fontWeight: FontWeight.w700, fontSize: 24),
              //                 ),
              //                 const Text(
              //                   "Visit the store only on the auspicious day of buying your Jewellery.  You can easily redeem as easily as you save. Visit the billing counter and tell them your savings plan number. The executive will check your credentials in a minute and you are good to purchase your favourite Jewellery.",
              //                   textAlign: TextAlign.center,
              //                   style: TextStyle(
              //                       height: 1.5,
              //                       fontWeight: FontWeight.w400,
              //                       fontSize: 16),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 30,
              // ),
              const Text(
                "You keep us going.",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
              ),
              const SizedBox(
                height: 49,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 528,
                    width: MediaQuery.of(context).size.width / 4.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/gradientdivya.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: FittedBox(
                                child: Image.asset(
                                  "assets/girl.png",
                                  height: 258,
                                  width:
                                      MediaQuery.of(context).size.width / 4.5,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            const Positioned(
                                left: 15,
                                top: 15,
                                child: Text(
                                  "Divya Menon",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.play_circle_fill),
                                  Text(
                                    "Watch Divya Story",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 2,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFC772A),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "I buy my daughters birthday gift every year at bluestone.. and my daughter really loves it.. I really appreciate the products delivered as before the said date and even the quality of the product..",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 528,
                    width: MediaQuery.of(context).size.width / 4.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/gradientdivya.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: FittedBox(
                                child: Image.asset(
                                  "assets/girl.png",
                                  height: 258,
                                  width:
                                      MediaQuery.of(context).size.width / 4.5,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            const Positioned(
                                left: 15,
                                top: 15,
                                child: Text(
                                  "Divya Menon",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.play_circle_fill),
                                  Text(
                                    "Watch Divya Story",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 2,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFC772A),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "I buy my daughters birthday gift every year at bluestone.. and my daughter really loves it.. I really appreciate the products delivered as before the said date and even the quality of the product..",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 528,
                    width: MediaQuery.of(context).size.width / 4.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/gradientdivya.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: FittedBox(
                                child: Image.asset(
                                  "assets/girl.png",
                                  height: 258,
                                  width:
                                      MediaQuery.of(context).size.width / 4.5,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            const Positioned(
                                left: 15,
                                top: 15,
                                child: Text(
                                  "Divya Menon",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.play_circle_fill),
                                  Text(
                                    "Watch Divya Story",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 2,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFC772A),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "I buy my daughters birthday gift every year at bluestone.. and my daughter really loves it.. I really appreciate the products delivered as before the said date and even the quality of the product..",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 85,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/gradientlast.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Ready to Get Started?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: maincolor,
                              fontSize: 55,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: isHoverone ? 5 : 0,
                                top: isHoverone ? 5 : 0,
                                child: SizedBox(
                                  width: 290,
                                  height: 80,
                                  child: Card(
                                    color: Colors.orange,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Download Zeed",
                                        style: TextStyle(
                                            color: Color(0xffFC772A),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (f) {
                                  setState(() {
                                    isHoverone = true;
                                  });
                                },
                                onExit: (f) {
                                  setState(() {
                                    isHoverone = false;
                                  });
                                },
                                child: SizedBox(
                                  width: 290,
                                  height: 80,
                                  child: Card(
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Download Zeed",
                                        style: TextStyle(
                                            color: Color(0xffFC772A),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 79,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, right: 70),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Join The\nWait List Now.",
                                    textAlign: TextAlign.left,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                    width: 550,
                                    height: 72,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15,
                                                          right: 15,
                                                          top: 5),
                                                  child: TextFormField(
                                                      decoration:
                                                          const InputDecoration(
                                                    border: InputBorder.none,
                                                    labelText:
                                                        'Email or Phone Number',
                                                  )))),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: 200,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  color: maincolor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: const Center(
                                                child: Text(
                                                  "Register",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "FAQ.",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 52,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 221, right: 221),
                          child: SizedBox(
                            height: 69,
                            child: Card(
                              color: const Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 39, top: 6, bottom: 6, right: 31),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 221, right: 221),
                          child: SizedBox(
                            height: 69,
                            child: Card(
                              color: const Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 39, top: 6, bottom: 6, right: 31),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 221, right: 221),
                          child: SizedBox(
                            height: 69,
                            child: Card(
                              color: const Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 39, top: 6, bottom: 6, right: 31),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 221, right: 221),
                          child: SizedBox(
                            height: 69,
                            child: Card(
                              color: const Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 39, top: 6, bottom: 6, right: 31),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 221, right: 221),
                          child: SizedBox(
                            height: 69,
                            child: Card(
                              color: const Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 39, top: 6, bottom: 6, right: 31),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 221, right: 221),
                          child: SizedBox(
                            height: 69,
                            child: Card(
                              color: const Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 39, top: 6, bottom: 6, right: 31),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 51,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, right: 70),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(33),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 93, right: 93, top: 37, bottom: 37),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Be a partner",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "with zeed.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 5,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: maincolor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 223,
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    child: Card(
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 35, right: 35),
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 23, right: 23),
                                                  child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    labelText:
                                                        'Email or Phone Number',
                                                  )),
                                                )),
                                          ),
                                          Container(
                                            height: 58,
                                            width: 208,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color: Colors.black,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Submit",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w400,
                                                    color: maincolor),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 79,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/logo.png"),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/fb.png"),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset("assets/insta.png"),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset("assets/link.png"),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset("assets/tweet.png"),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 60, right: 60, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "© zeed Technologies Pvt. Ltd.",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFC772A),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Live Gold Rate",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          // left: 25,
          // top: 20,
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.92,
                decoration: BoxDecoration(
                  color: const Color(0xffFFF0D3).withOpacity(0.21),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, top: 5, bottom: 5, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/logo.png"),
                      Container(
                          height: 48,
                          width: 198,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: maincolor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                              child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Live Gold Rate",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                          ))),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
