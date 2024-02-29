import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel_app/pages/splash/widgets/image_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/tokyo.webp'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Explore.\n',
                      style: Theme.of(context).textTheme.headlineMedium),
                  TextSpan(
                      text: 'Travel.\n',
                      style: Theme.of(context).textTheme.headlineMedium),
                  TextSpan(
                      text: 'Inspire.\n',
                      style: Theme.of(context).textTheme.headlineMedium),
                ])),
              ),
              const Spacer(flex: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: ImageWidget(
                        angle: 1 * (pi / 180),
                        height: size.height * 0.25,
                        width: size.width * 0.25,
                        image: 'assets/images/tokyo.webp'),
                  ),
                  ImageWidget(
                      angle: 1.99 * pi,
                      height: size.height * 0.4,
                      width: size.width * 0.42,
                      image: 'assets/images/venus.webp'),
                  Expanded(
                    child: ImageWidget(
                        angle: pi / 8,
                        height: size.height * 0.3,
                        width: size.width * 0.5,
                        image: 'assets/images/turkey.webp'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
