import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IconEighteen extends StatefulWidget {
  const IconEighteen({super.key, required this.img,required this.imgdes});
  final img;
  final imgdes;

  @override
  State<IconEighteen> createState() => _IconEighteenState();
}

class _IconEighteenState extends State<IconEighteen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(29)),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(19)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(widget.img),
                  )),
              SizedBox(
                height: 12,
              ),
              Text(
                widget.imgdes,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
