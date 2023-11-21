import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class berandaPage extends StatefulWidget {
  const berandaPage({super.key});

  @override
  State<berandaPage> createState() => _berandaPageState();
}

class _berandaPageState extends State<berandaPage> {
  final List<String> gambarlist = [
    "assets/images/studying.png",
    "assets/images/studying.png",
    "assets/images/studying.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("beranda"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              items: gambarlist.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                        ));
                  },
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
