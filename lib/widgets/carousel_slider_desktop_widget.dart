import 'package:flutter/material.dart';

import '../const/const.dart';

class CarouselSliderDesktopWidget extends StatefulWidget {
  const CarouselSliderDesktopWidget({super.key, required this.image});
  final image;

  @override
  State<CarouselSliderDesktopWidget> createState() =>
      _CarouselSliderDesktopWidgetState();
}

class _CarouselSliderDesktopWidgetState
    extends State<CarouselSliderDesktopWidget> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
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
                  widget.image,
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
    );
  }
}
