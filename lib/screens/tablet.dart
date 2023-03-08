import 'package:flutter/material.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  Color maincolor = const Color(0xffFC772A);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/head.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
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
                        RichText(
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
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 5,
                          width: 113,
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
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        const Text(
                          "#1App",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Color(0xffFC772A)),
                        ),
                        const SizedBox(
                          height: 30,
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
                  ),
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
                    padding: EdgeInsets.only(left: 80, top: 80, bottom: 66),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            // color: Colors.yellow.shade100,
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
                                        fontSize: 36,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.yellow.shade50,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: const Color(0xffFC772A))),
                                    child: const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Text(
                                        "The traditional way of starting a saving plan with the Jewellers is slow, has a lot of friction and you have to visit the store from planning to purchase every month.",
                                        style: TextStyle(
                                            height: 1.5,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
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
                            flex: 3, child: Image.asset("assets/save.png")),
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
                                  RichText(
                                    text: const TextSpan(
                                        text: "01\n\n",
                                        style: TextStyle(
                                            color: Color(0xffDEDEDE),
                                            fontSize: 32,
                                            fontWeight: FontWeight.w700),
                                        children: [
                                          TextSpan(
                                            text:
                                                "Look for your favorite\nSavings plan and start your\nplan.",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 32,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ]),
                                  ),
                                  Image.asset(
                                    "assets/011.png",
                                    width: 163,
                                    height: 323,
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              "Start your plan.",
                              style: TextStyle(
                                  color: Color(0xffDEDEDE),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 255,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/gradienttwo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(36.0),
                        child: Text(
                          "We are serious about you saving Plan.",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 121,
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        //  color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    height: 121,
                                    width: 111,
                                    child: Image.asset("assets/101.png"),
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
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text(
                                          "Your payment toward saving plan\nis paid directly to the Jeweller\nand saved in 22k Gold.",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
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
                                            BorderRadius.circular(30)),
                                    height: 121,
                                    width: 111,
                                    child: Image.asset("assets/102.png"),
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
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text(
                                          "Means bank graded security\nand ISO Complainces",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
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
                                            BorderRadius.circular(30)),
                                    height: 121,
                                    width: 111,
                                    child: Image.asset("assets/103.png"),
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
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text(
                                          "Every installment you paid till\nnow is insured.",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
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
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        const Text(
                                          "One place\nfor everything.",
                                          style: TextStyle(
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
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          "Juggling multiple Jewellery stores to find the best saving plan to start is hard. zeed gives you a single real-time view of all the best Jewellery savings plans near you.",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Center(
                                        child: Card(
                                            elevation: 5,
                                            color: Colors.yellow.shade50,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/one.png",
                                                height: 200,
                                                // width: 180,
                                              ),
                                            ))),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Center(
                                        child: Card(
                                            elevation: 5,
                                            color: Colors.yellow.shade50,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/two.png",
                                                height: 200,
                                              ),
                                            ))),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        const Text(
                                          "Get your time back.",
                                          style: TextStyle(
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
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          "Starting a new saving plan is a day-long work. We often procrastinate for months to start a new plan. zeed senses these practices of you, so we brought your favourite Jewellery store to your hands.",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        const Text(
                                          "Invest.",
                                          style: TextStyle(
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
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          "Gold is a Powerful passive investment strategy.\nSaving Gold as Jewellery has got a few drawbacks. Which is not the case with zeed.\nAll additional costs such as making charges and wastages are waived off upto 18%.\nYou only pay for the amount of gold you save. Also, you don't have to pay the capital gain tax.",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Center(
                                        child: Card(
                                            elevation: 5,
                                            color: Colors.yellow.shade50,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/three.png",
                                                height: 200,
                                                // width: 180,
                                              ),
                                            ))),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Center(
                                        child: Card(
                                            elevation: 5,
                                            color: Colors.yellow.shade50,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/four.png",
                                                height: 200,
                                              ),
                                            ))),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        const Text(
                                          "Every single penny is\nInsured.",
                                          style: TextStyle(
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
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          "Whatever you pay is paid directly to the Jewellery partner and We have got you covered with our insurance partner. Your gold is safe even on doomsday.",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 100),
                              child: Stack(
                                clipBehavior: Clip.none,
                                // textDirection: TextDirection.rtl,
                                children: [
                                  Container(
                                    width: 260,
                                    height: 140,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: const Center(
                                      child: Text(
                                        "Zero wastage and\nmaking charges",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -80,
                                    // left: 45,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          "assets/01.png",
                                          height: 126,
                                          width: 126,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 100),
                              child: Stack(
                                clipBehavior: Clip.none,
                                //textDirection: TextDirection.rtl,
                                children: [
                                  Container(
                                    width: 260,
                                    height: 140,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: const Center(
                                      child: Text(
                                        "First Month\nInstalment free",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -80,
                                    //left: 45,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          "assets/free1.png",
                                          height: 126,
                                          width: 126,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 100),
                              child: Stack(
                                clipBehavior: Clip.none,
                                // textDirection: TextDirection.rtl,
                                children: [
                                  Container(
                                    width: 260,
                                    height: 140,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: const Center(
                                      child: Text(
                                        "Free gold coins\nand freebies",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -80,
                                    //left: 45,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          "assets/free2.png",
                                          height: 126,
                                          width: 126,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 100),
                              child: Stack(
                                clipBehavior: Clip.none,
                                // textDirection: TextDirection.rtl,
                                children: [
                                  Container(
                                    width: 260,
                                    height: 140,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: const Center(
                                      child: Text(
                                        "Cancel\nanytime",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -80,
                                    //  left: 45,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          "assets/04.png",
                                          height: 126,
                                          width: 126,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 100),
                              child: Stack(
                                clipBehavior: Clip.none,
                                // textDirection: TextDirection.rtl,
                                children: [
                                  Container(
                                    width: 260,
                                    height: 140,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: const Center(
                                      child: Text(
                                        "100% Refund",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -80,
                                    // left: 45,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          "assets/05.png",
                                          height: 126,
                                          width: 126,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 100),
                              child: Stack(
                                clipBehavior: Clip.none,
                                // textDirection: TextDirection.rtl,
                                children: [
                                  Container(
                                    width: 260,
                                    height: 140,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: const Center(
                                      child: FittedBox(
                                        child: Text(
                                          "Bis Hallmarked\nCertified 916 Jewellery",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -80,
                                    // left: 45,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          "assets/06.png",
                                          height: 126,
                                          width: 126,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 100),
                              child: Stack(
                                clipBehavior: Clip.none,
                                //textDirection: TextDirection.rtl,
                                children: [
                                  Container(
                                    width: 260,
                                    height: 140,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: const Center(
                                      child: Text(
                                        "Free\nInsurance",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -80,
                                    // left: 45,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          "assets/07.png",
                                          height: 126,
                                          width: 126,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 100),
                              child: Stack(
                                clipBehavior: Clip.none,
                                //textDirection: TextDirection.rtl,
                                children: [
                                  Container(
                                    width: 260,
                                    height: 140,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: const Center(
                                      child: Text(
                                        "Rewarding\nPurchase Plan",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -80,
                                    // left: 45,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          "assets/08.png",
                                          height: 126,
                                          width: 126,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                IntrinsicHeight(
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
                                      children: [
                                        Icon(Icons.play_circle_fill),
                                        const Text(
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
                                      children: [
                                        Icon(Icons.play_circle_fill),
                                        const Text(
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
                                      children: [
                                        Icon(Icons.play_circle_fill),
                                        const Text(
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
                              child: Center(
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
                                              child: Center(
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
                              color: Colors.yellow.shade50,
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
                              color: Colors.yellow.shade50,
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
                              color: Colors.yellow.shade50,
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
                              color: Colors.yellow.shade50,
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
                              color: Colors.yellow.shade50,
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
                                        color: Colors.grey.shade100,
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
                                                            InputBorder.none,
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
