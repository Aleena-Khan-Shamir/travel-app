import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {super.key,
      required this.angle,
      required this.height,
      required this.width,
      required this.image});
  final double angle;
  final double height;
  final double width;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
