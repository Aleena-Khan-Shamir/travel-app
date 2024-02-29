import 'package:flutter/material.dart';
import 'package:travel_app/pages/home/controller.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          itemCount: controller.icon.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: 35,
                  child: Row(
                    children: [
                      Image.asset(
                        controller.icon[index],
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        controller.text[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
