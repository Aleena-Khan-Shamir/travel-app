import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/data/model/model.dart';
import 'package:travel_app/pages/home/controller.dart';
import 'package:travel_app/pages/home/widgets/category_widget.dart';
import 'package:travel_app/pages/home/widgets/image_card_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8, top: 5),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/profile.jpg'))),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning 👋',
                style: Theme.of(context).textTheme.titleSmall),
            Text(
              'Andrew',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Flexible(child: SizedBox(height: 20)),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(CupertinoIcons.search),
                hintText: 'Search destination',
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const Flexible(child: SizedBox(height: 20)),
            CategoryWidget(controller: controller),
            const Flexible(child: SizedBox(height: 30)),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: Home.list.length,
                  itemBuilder: (_, index) => ImageCardWidget(
                        home: Home.list[index],
                        controller: controller,
                      )),
            )
          ],
        ),
      ),
    );
  }
}
