import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stacked Card Slider',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Widget> customCards = [
    CustomCard(
      color: Colors.red,
      title: "1",
    ),
    CustomCard(
      color: Colors.yellow,
      title: "2",
    ),
    CustomCard(
      color: Colors.blue,
      title: "3",
    ),
    CustomCard(
      color: Colors.purple,
      title: "4",
    ),
    CustomCard(
      color: Colors.green,
      title: "5",
    ),
    CustomCard(
      color: Colors.deepOrange,
      title: "6",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stacked Card Slide"),
        ),
        body: Swiper(
          itemBuilder: (BuildContext context, int index) => customCards[index],
          itemCount: 6,
          itemWidth: 300.0,
          layout: SwiperLayout.STACK,
        ));
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.color,
    required this.title,
  });

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: color,
              child: SizedBox(),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
