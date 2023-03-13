import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:zeedweb/const/const.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
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
    _controller = VideoPlayerController.asset(video);
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
                      scale: 3,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        child: VideoPlayer(_controller!),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "Save\nBeyond Limits",
                            style: TextStyle(
                                height: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 36,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 5,
                            width: 156,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Starting a jewellery saving plan can\nbe much easy, All jewelery saving plan in",
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          const Text(
                            "#1App",
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xffFC772A)),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Thoughtful saving plans from your favourite Jewellers.",
                          style: TextStyle(
                              wordSpacing: 1.5,
                              letterSpacing: 1.5,
                              height: 1.5,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: const Color(0xffFC772A))),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "The traditional way of starting a saving plan with the Jewellers is slow, has a lot of friction and you have to visit the store from planning to purchase every month.",
                              style: TextStyle(
                                  wordSpacing: 1.5,
                                  letterSpacing: 1.5,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "We’ve built our platform to take your savings Journey beyond the traditional way. Your entire Gold saving Journey is managed on one platform",
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        CarouselSlider(
                            options: CarouselOptions(
                                enlargeCenterPage: true,
                                viewportFraction: 0.5,
                                // height:
                                //     MediaQuery.of(context).size.height / 2,
                                autoPlay: true,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    currentPos = index;
                                  });
                                }),
                            items: cslider),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "How zeed works.",
                    style: TextStyle(
                        height: 1.5,
                        wordSpacing: 1.5,
                        letterSpacing: 1.5,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Stack(children: [
                                Text(
                                  '01.',
                                  style: TextStyle(
                                    fontSize: 22,
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
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Look for your favorite\nSavings plan and start your\nplan.",
                                style: TextStyle(
                                    height: 1.5,
                                    letterSpacing: 1.5,
                                    wordSpacing: 1.5,
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                              Image.asset(
                                "assets/011.png",
                                height: 391,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Stack(children: [
                                Text(
                                  '02.',
                                  style: TextStyle(
                                    fontSize: 22,
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
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Pay for 11 months in a\nclick of a button",
                                style: TextStyle(
                                    height: 1.5,
                                    letterSpacing: 1.5,
                                    wordSpacing: 1.5,
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                              Image.asset(
                                "assets/013.png",
                                height: 391,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Stack(children: [
                                Text(
                                  '03.',
                                  style: TextStyle(
                                    fontSize: 22,
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
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Buy Jewelry at\nyour favorite store with\nyour savings plan.",
                                style: TextStyle(
                                    height: 1.5,
                                    letterSpacing: 1.5,
                                    wordSpacing: 1.5,
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                              Image.asset(
                                "assets/013.png",
                                height: 391,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    // margin: EdgeInsets.all(25),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/mobile_gradient.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          const Text(
                            "We are serious about\nyou saving plan.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.5,
                                // wordSpacing: 1.5,
                                // letterSpacing: 1.5,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/101.png",
                                height: 121,
                                width: 111,
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: "Max Trust\n",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.5,
                                        // wordSpacing: 1.5,
                                        // letterSpacing: 1.5,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                    children: [
                                      TextSpan(
                                        text:
                                            "Your payment toward\nsaving plan is paid directly\nto the Jeweller and saved\nin 22k Gold.",
                                        style: TextStyle(
                                            height: 1.5,
                                            // letterSpacing: 1.5,
                                            // wordSpacing: 1.5,
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ]),
                              ),
                            ],
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/102.png",
                                height: 121,
                                width: 111,
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: "Max Security\n",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.5,
                                        // wordSpacing: 1.5,
                                        // letterSpacing: 1.5,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                    children: [
                                      TextSpan(
                                        text:
                                            "Means bank graded\nsecurity and ISO\nComplainces",
                                        style: TextStyle(
                                            height: 1.5,
                                            // letterSpacing: 1.5,
                                            // wordSpacing: 1.5,
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ]),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/103.png",
                                height: 121,
                                width: 111,
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: "Max Safety\n",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.5,
                                        // wordSpacing: 1.5,
                                        // letterSpacing: 1.5,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                    children: [
                                      TextSpan(
                                        text:
                                            "Every installment\nyou paid till now is\ninsured.",
                                        style: TextStyle(
                                            height: 1.5,
                                            // letterSpacing: 1.5,
                                            // wordSpacing: 1.5,
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("assets/Gradient.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/one.png",
                                  height: 238,
                                  width: 209,
                                ),
                              )),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "One place for everything.",
                                style: TextStyle(
                                  height: 1.5,
                                  letterSpacing: 1.5,
                                  wordSpacing: 1.5,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 5,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFC772A),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Juggling multiple Jewellery stores to find the best saving plan to start is hard. zeed gives you a single real-time view of all the best Jewellery savings plans near you.",
                                style: TextStyle(
                                    height: 1.5,
                                    letterSpacing: 1.5,
                                    wordSpacing: 1.5,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/time.png",
                                  height: 238,
                                  width: 209,
                                ),
                              )),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Get your time back.",
                                style: TextStyle(
                                  height: 1.5,
                                  letterSpacing: 1.5,
                                  wordSpacing: 1.5,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 5,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFC772A),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Starting a new saving plan is a day-long work. We often procrastinate for months to start a new plan. zeed senses these practices of you, so we brought your favourite Jewellery store to your hands.",
                                style: TextStyle(
                                    height: 1.5,
                                    letterSpacing: 1.5,
                                    wordSpacing: 1.5,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/goldbag.png",
                                  height: 238,
                                  width: 209,
                                ),
                              )),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Invest.",
                                style: TextStyle(
                                  height: 1.5,
                                  letterSpacing: 1.5,
                                  wordSpacing: 1.5,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 5,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFC772A),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Gold is a Powerful passive investment strategy. Saving Gold as Jewellery has got a few drawbacks. Which is not the case with zeed. All additional costs such as making charges and wastages are waived off upto 18%. You only pay for the amount of gold you save. Also, you don't have to pay the capital gain tax.",
                                style: TextStyle(
                                    height: 1.5,
                                    letterSpacing: 1.5,
                                    wordSpacing: 1.5,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/goldshild.png",
                                  height: 238,
                                  width: 209,
                                ),
                              )),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Every single penny is Insured.",
                                style: TextStyle(
                                  height: 1.5,
                                  letterSpacing: 1.5,
                                  wordSpacing: 1.5,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 5,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFC772A),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Whatever you pay is paid directly to the Jewellery partner and We have got you covered with our insurance partner. Your gold is safe even on doomsday",
                                style: TextStyle(
                                    height: 1.5,
                                    letterSpacing: 1.5,
                                    wordSpacing: 1.5,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/giftimage.png",
                                  height: 238,
                                  width: 209,
                                ),
                              )),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Every single penny is Insured.",
                                style: TextStyle(
                                  height: 1.5,
                                  letterSpacing: 1.5,
                                  wordSpacing: 1.5,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 5,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFC772A),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Visit the store only on the auspicious day of buying your Jewellery.  You can easily redeem as easily as you save. Visit the billing counter and tell them your savings plan number. The executive will check your credentials in a minute and you are good to purchase your favourite Jewellery.",
                                style: TextStyle(
                                    height: 1.5,
                                    letterSpacing: 1.5,
                                    wordSpacing: 1.5,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      // color: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/01.png",
                              height: 126,
                              width: 126,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Zero wastage and\nmaking charges",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      // color: Colors.yellow.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/free1.png",
                              height: 126,
                              width: 126,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "First Month\nInstallment free",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      // color: Colors.yellow.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/05.png",
                              height: 126,
                              width: 126,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "100% Refund",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      // color: Colors.yellow.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/06.png",
                              height: 126,
                              width: 126,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Bis Hallmarked\nCertified 916\nJewellery",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      // color: Colors.yellow.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/free2.png",
                              height: 126,
                              width: 126,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Free gold coins\nand freebies",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      // color: Colors.yellow.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/07.png",
                              height: 126,
                              width: 126,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Free\nInsurance",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      // color: Colors.yellow.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/04.png",
                              height: 126,
                              width: 126,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Cancel\nanytime",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      // color: Colors.yellow.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/08.png",
                              height: 126,
                              width: 126,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Rewarding\nPurchase Plan",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset("assets/email.png"),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Live Gold rates",
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Insightful and actionable daily gold rate fluctuation guidance.Guessing the gold price Fluctuations can be hard to unravel, and you never know when the gold price slides down. zeed gives you access to tailored guidance and analytics of gold rate fluctuations so that you don't miss out on your lowest rate to pay the saving installment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset("assets/subscription.png"),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Marketplace",
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Instant access to all the savings schemes near you Never visit the store to start or cancel the saving plan you can do everything in our app anytime.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset("assets/email.png"),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Redeem",
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Visit the store only on the auspicious day of buying your Jewellery.  You can easily redeem as easily as you save. Visit the billing counter and tell them your savings plan number. The executive will check your credentials in a minute and you are good to purchase your favourite Jewellery.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Customer Says.",
                  style: TextStyle(
                      height: 1.5,
                      wordSpacing: 1.5,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    //height: 418,
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
                                      height: 1.5,
                                      wordSpacing: 1.5,
                                      letterSpacing: 1.5,
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
                                        height: 1.5,
                                        wordSpacing: 1.5,
                                        letterSpacing: 1.5,
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
                                    wordSpacing: 1.5,
                                    letterSpacing: 1.5,
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    //height: 418,
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
                                      height: 1.5,
                                      wordSpacing: 1.5,
                                      letterSpacing: 1.5,
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
                                        height: 1.5,
                                        wordSpacing: 1.5,
                                        letterSpacing: 1.5,
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
                                    wordSpacing: 1.5,
                                    letterSpacing: 1.5,
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    //height: 418,
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
                                      height: 1.5,
                                      wordSpacing: 1.5,
                                      letterSpacing: 1.5,
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
                                        height: 1.5,
                                        wordSpacing: 1.5,
                                        letterSpacing: 1.5,
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
                                    wordSpacing: 1.5,
                                    letterSpacing: 1.5,
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
                            "Ready to run buttery-\nsmooth virtual sessions?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontSize: 26,
                                fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            "It’s time to experience\nButter for yourself!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontSize: 26,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Card(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                "Download Zeed",
                                style: TextStyle(
                                    color: Color(0xffFC772A),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Join the\nwait list now.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 5),
                                    child: TextFormField(
                                        decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Email or Phone Number',
                                    )))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 250,
                            child: Card(
                              color: const Color(0xffFC772A),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "FAQ.",
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
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
                                child: FittedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "We democratise gold savings with our\njewellery marketplace.",
                                        style: TextStyle(
                                            height: 1.5,
                                            wordSpacing: 1.5,
                                            letterSpacing: 1.5,
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FittedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "We democratise gold savings with our\njewellery marketplace.",
                                        style: TextStyle(
                                            height: 1.5,
                                            wordSpacing: 1.5,
                                            letterSpacing: 1.5,
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FittedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "We democratise gold savings with our\njewellery marketplace.",
                                        style: TextStyle(
                                            height: 1.5,
                                            wordSpacing: 1.5,
                                            letterSpacing: 1.5,
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FittedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "We democratise gold savings with our\njewellery marketplace.",
                                        style: TextStyle(
                                            height: 1.5,
                                            wordSpacing: 1.5,
                                            letterSpacing: 1.5,
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FittedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "We democratise gold savings with our\njewellery marketplace.",
                                        style: TextStyle(
                                            height: 1.5,
                                            wordSpacing: 1.5,
                                            letterSpacing: 1.5,
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
                            height: 20,
                          ),
                          const Text(
                            "Be a partner\nwith zeed.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.5,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                          Card(
                            color: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, right: 15, top: 5),
                                          child: TextFormField(
                                              decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Email or Phone Number',
                                          )))),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Card(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(
                                          color: Color(0xffFC772A),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset("assets/logo.png"),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xffFC772A),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                  child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Live Gold Rate",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ))),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "© zeed Technologies Pvt. Ltd.",
                  style: TextStyle(
                      height: 1.5,
                      wordSpacing: 1.5,
                      letterSpacing: 1.5,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
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
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF0D3).withOpacity(0.21),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, top: 5, bottom: 5, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/logo.png",
                          height: 30,
                          width: 87,
                        ),
                        Container(
                            height: 35,
                            width: 125,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: maincolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                                child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Live Gold Rate",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12),
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
