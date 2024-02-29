import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/data/data.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});
  final Home argument = Get.arguments;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(argument.image), fit: BoxFit.cover)),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  argument.title,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  argument.description,
                  style: const TextStyle(color: Colors.white, letterSpacing: 2),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
                const SizedBox(height: 5),
                SizedBox(
                    width: double.infinity,
                    height: size.height * 0.06,
                    child: FilledButton(
                        onPressed: () {}, child: const Text('Button Now'))),
                const SizedBox(height: 5)
              ],
            ),
          )
        ],
      ),
    );
  }
}
