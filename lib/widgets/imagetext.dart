import 'package:flutter/material.dart';

class ImageTextWidget extends StatefulWidget {
  const ImageTextWidget(
      {super.key, required this.imagename, required this.imagedescription});
  final String imagename;
  final String imagedescription;
  @override
  State<ImageTextWidget> createState() => _ImageTextWidgetState();
}

class _ImageTextWidgetState extends State<ImageTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      //height: 140,
      decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.orange.shade200,
          //     offset: const Offset(
          //       5.0,
          //       5.0,
          //     ),
          //     blurRadius: 10.0,
          //     spreadRadius: 0.5,
          //   ), //BoxShadow
          //   BoxShadow(
          //     color: Colors.white,
          //     offset: const Offset(0.0, 0.0),
          //     blurRadius: 0.0,
          //     spreadRadius: 0.0,
          //   ), //BoxShadow
          // ],
          border: Border.all(
            color: Colors.orange.shade100,
          ),
          borderRadius: BorderRadius.circular(29)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  border: Border.all(color: Color(0xffFC772A))),
              child: Image.asset(
                widget.imagename,
                height: 78,
                width: 106,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              widget.imagedescription,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
