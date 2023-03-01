import 'package:flutter/material.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  Color maincolor = Color(0xffFC772A);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 910,
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
                                style: TextStyle(
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
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 28,
                                    color: Colors.white),
                                children: [
                                  TextSpan(
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
              ),
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 749,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/gradientone.png"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.elliptical(150, 30))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 220),
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
                                        fontSize: 22,
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
                                      style:
                                          TextStyle(fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text(
                                      "We’ve built our platform to take your savings Journey beyond the traditional way. Your entire Gold saving Journey is managed on one platform",
                                      style:
                                          TextStyle(fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(flex: 3, child: Image.asset("assets/save.png")),
                      ],
                    ),
                  ),
                ),
              ),
              /* Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.yellow.shade100,
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
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow.shade50,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xffFC772A))),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "The traditional way of starting a saving plan with the Jewellers is slow, has a lot of friction and you have to visit the store from planning to purchase every month.",
                            style: TextStyle(fontWeight: FontWeight.w400),
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
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "We’ve built our platform to take your savings Journey beyond the traditional way. Your entire Gold saving Journey is managed on one platform",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                      Center(
                        child: Image.asset("assets/save.png"),
                      ),
                    ],
                  ),
                ),
              ), */
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "How zeed works.",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
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
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "01.",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Look for your favorite Savings plan and start your plan.",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Image.asset("assets/save.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Our Partners"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/prince.png"),
                  Image.asset("assets/nac.png"),
                  Image.asset("assets/khazana.png"),
                  Image.asset("assets/lalitha.png"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      color: Colors.yellow.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
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
                                            padding: const EdgeInsets.all(8.0),
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
                                            padding: const EdgeInsets.all(8.0),
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
                                            padding: const EdgeInsets.all(8.0),
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
                                            padding: const EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade100,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/percentage.png"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "Lowest\nV.A. Charges",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/percentage.png"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "Transparency\nin pricing",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/percentage.png"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "Easy\nexchange",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/percentage.png"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "Rewarding\npurchase plans",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/percentage.png"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "Great shopping\nexperience",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/percentage.png"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "3rd Party\ncertified",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
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
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Customer Says.",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.yellow.shade100,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
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
                                  const Text(
                                    "Watch Divya Story",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
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
                      child: Card(
                        color: Colors.yellow.shade100,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
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
                                  const Text(
                                    "Watch Divya Story",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
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
                      child: Card(
                        color: Colors.yellow.shade100,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
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
                                  const Text(
                                    "Watch Divya Story",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
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
                  child: Card(
                    color: Colors.yellow.shade100,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Join the\nwait list now.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
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
                                                padding: const EdgeInsets.only(
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
                                      SizedBox(
                                        width: 250,
                                        child: Card(
                                          color: const Color(0xffFC772A),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(20.0),
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
                              fontSize: 22, fontWeight: FontWeight.w700),
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
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "with zeed.",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700),
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
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
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
                                                      border: InputBorder.none,
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
                                fontWeight: FontWeight.w400, fontSize: 12),
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
        Center(
          child: Positioned.fill(
            // left: 25,
            // top: 20,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  decoration: BoxDecoration(
                    color: Color(0xffFFF0D3).withOpacity(0.21),
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
        )
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
