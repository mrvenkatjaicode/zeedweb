import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../widgets/imagetext.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  Color maincolor = const Color(0xffFC772A);
  VideoPlayerController? _controller;
  int currentPos = 0;

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
    _controller = VideoPlayerController.asset("assets/mainvideo.mp4");
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Transform.scale(
                      scale: 1.11,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 523,
                          child: VideoPlayer(_controller!)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 84, right: 20, top: 20),
                          child: RichText(
                            text: TextSpan(
                                text: "Save\n",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 51,
                                    color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: "Beyond Limits.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 51,
                                        color: maincolor),
                                  )
                                ]),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 84, right: 20),
                          child: Container(
                            height: 5,
                            width: 113,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 84, right: 20),
                          child: Text(
                            "Starting a jewellery saving plan can\nbe much easy, All jewelery saving plan in",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 84, right: 20),
                          child: Text(
                            "#1App",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: Color(0xffFC772A)),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            height: 49,
                            width: 199.39,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
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
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 749,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/gradientone.png"),
                      fit: BoxFit.fill,
                    ),
                  ),

                  child: Stack(
                    children: [
                      Positioned(
                        top: 170,
                        right: 20,
                        child: Image.asset(
                          "assets/mobile.jpeg",
                          height: 300,
                          width: 180,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 80, top: 80, bottom: 66),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    // color: Colors.yellow.shade100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text(
                                            "Thoughtful saving plans from your favourite Jewellers.",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xffFFFFFF),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: const Color(
                                                        0xffFC772A))),
                                            child: const Padding(
                                              padding: EdgeInsets.all(15.0),
                                              child: Text(
                                                "The traditional way of starting a saving plan with the Jewellers is slow, has a lot of friction and you have to visit the store from planning to purchase every month.",
                                                style: TextStyle(
                                                    height: 1.5,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Text(
                                              "zeed brings together the best of Saving plans from the best of Jewellers at a click of a button",
                                              style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Text(
                                              "We’ve built our platform to take your savings Journey beyond the traditional way. Your entire Gold saving Journey is managed on one platform",
                                              style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
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
                                                  viewportFraction: 0.4,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      3,
                                                  autoPlay: true,
                                                  onPageChanged:
                                                      (index, reason) {
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
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(36.0),
                                  child: Text(
                                    "We are serious about you saving Plan.",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                FittedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: 121,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  //  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              height: 121,
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
                                                        fontSize: 18,
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
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 121,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  // color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              height: 121,
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
                                                        fontSize: 18,
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
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 121,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  //color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              height: 121,
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
                                                        fontSize: 18,
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
                                                        fontSize: 14,
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
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
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
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 71, right: 71),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    // height: 406,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 42, top: 38, right: 42, bottom: 38),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
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
                                            fontSize: 32,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/011.png",
                                    width: 163,
                                    height: 323,
                                  ),
                                ],
                              ),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("assets/gradientbig.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    //width: 698,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "One place for\neverything.",
                                          style: TextStyle(
                                              fontSize: 33,
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
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/one.png",
                                    width:
                                        MediaQuery.of(context).size.width / 6.5,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 87,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "assets/time.png",
                                    width:
                                        MediaQuery.of(context).size.width / 4.7,
                                  ),
                                  SizedBox(
                                    //width: MediaQuery.of(context).size.width / 2.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Get your time back.",
                                          style: TextStyle(
                                              fontSize: 33,
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
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 87,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    // width: 634,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Invest.",
                                          style: TextStyle(
                                              fontSize: 33,
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
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/goldbag.png",
                                    width:
                                        MediaQuery.of(context).size.width / 6.1,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 87,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "assets/goldshild.png",
                                    width:
                                        MediaQuery.of(context).size.width / 4.7,
                                  ),
                                  SizedBox(
                                    //width: MediaQuery.of(context).size.width / 2.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Every single penny is\nInsured.",
                                          style: TextStyle(
                                              fontSize: 33,
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
                                          "Whatever you pay is paid directly to the Jewellery partner and\nWe have got you covered with our insurance partner. Your\ngold is safe even on doomsday",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 87,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    // width: 634,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Redeem.",
                                          style: TextStyle(
                                              fontSize: 33,
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
                                          "Visit the store only on the auspicious day of buying your\nJewellery.  You can easily redeem as easily as you save. Visit the\nbilling counter and tell them your savings plan number. The\nexecutive will check your credentials in a minute and you are\ngood to purchase your favourite Jewellery.",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/giftimage.png",
                                    width:
                                        MediaQuery.of(context).size.width / 6.1,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
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
                          height: 30,
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
                                imagedescription:
                                    "First Month\nInstalment free"),
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
                          height: 10,
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
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                /* IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        // height: 367,
                        width: MediaQuery.of(context).size.width / 4.07,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/email.png"),
                                const Text(
                                  "Live Gold rates",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                const Text(
                                  "Visit the store only on the auspicious day of buying your Jewellery.  You can easily redeem as easily as you save. Visit the billing counter and tell them your savings plan number. The executive will check your credentials in a minute and you are good to purchase your favourite Jewellery.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      height: 1.5,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        // height: 367,
                        width: MediaQuery.of(context).size.width / 4.07,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/email.png"),
                                const Text(
                                  "Marketplace",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                const Text(
                                  "Instant access to all the savings schemes near you Never visit the store to start or cancel the saving plan you can do everything in our app anytime.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      height: 1.5,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        // height: 367,
                        width: MediaQuery.of(context).size.width / 4.07,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/email.png"),
                                const Text(
                                  "Redeem",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                const Text(
                                  "Visit the store only on the auspicious day of buying your Jewellery.  You can easily redeem as easily as you save. Visit the billing counter and tell them your savings plan number. The executive will check your credentials in a minute and you are good to purchase your favourite Jewellery.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      height: 1.5,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                 */
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Customer Says.",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // height: 528,
                          // width: MediaQuery.of(context).size.width / 4.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/gradientdivya.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset("assets/girl.png"),
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
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
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          // height: 528,
                          // width: MediaQuery.of(context).size.width / 4.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/gradientdivya.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset("assets/girl.png"),
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
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
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          // height: 528,
                          // width: MediaQuery.of(context).size.width / 4.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/gradientdivya.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset("assets/girl.png"),
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
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
                      ),
                    ],
                  ),
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
                          const Text(
                            "Ready to run buttery- smooth virtual sessions?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "It’s time to experience Butter for yourself!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 64,
                            width: 247,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
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
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                const Expanded(
                                  child: Text(
                                    "Join the\nwait list now.",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
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
                                          padding: const EdgeInsets.all(15.0),
                                          child: SizedBox(
                                            height: 54,
                                            width: 187,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  color:
                                                      const Color(0xffFC772A),
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
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "FAQ.",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 18,
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 18,
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 18,
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 18,
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "We democratise gold savings with our jewellery marketplace.",
                                      style: TextStyle(
                                          fontSize: 18,
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
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Be a partner",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 35,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "with zeed.",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 35,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 5,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffFC772A),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Card(
                                        color: Color(0xffFFFFFF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
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
                                                              left: 15,
                                                              right: 15,
                                                              top: 5),
                                                      child: TextFormField(
                                                          decoration:
                                                              const InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        labelText:
                                                            'Email or Phone Number',
                                                      )))),
                                            ),
                                            SizedBox(
                                              width: 200,
                                              child: Card(
                                                color: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(20.0),
                                                  child: Center(
                                                    child: Text(
                                                      "Submit",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffFC772A),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
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
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 12, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "© zeed Technologies Pvt. Ltd.",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Container(
                          width: 178.35,
                          height: 43,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: const Color(0xffFC772A),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                              child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Live Gold Rate",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                          ))),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                  height: 55,
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
                            height: 43.15,
                            width: 178.35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: maincolor,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: const Center(
                                child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Live Gold Rate",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                            ))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
