import 'package:flutter/material.dart';
import 'package:movieapp/widgets/card_swiper.dart';
import 'package:movieapp/widgets/movie_slider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: [
            CardSwiper(),
            MovieSlider(),
          ],
        ),
        ),
      ),
    );
  }
}
