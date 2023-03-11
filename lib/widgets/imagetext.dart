import 'package:flutter/material.dart';

class ImageTextWidget extends StatefulWidget {
   const ImageTextWidget({super.key, required this.imagename, required this.imagedescription});
  final String imagename;
  final String imagedescription;
  @override
  State<ImageTextWidget> createState() => _ImageTextWidgetState();
}

class _ImageTextWidgetState extends State<ImageTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 6.15,
      //height: 140,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(29)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              widget.imagename,
              height: 126,
              width: 126,
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
