import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dart News',
      home: MySlider(),
    );
  }
}

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dart News',textAlign: TextAlign.center),
      ),
      body: Container(
        child: Center(
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: Carousel(
                    dotSize: 6.0,
                    dotSpacing: 15.0,
                    dotPosition: DotPosition.bottomCenter,
                    images: [
                      Image.asset('assets/images/AA.gif', fit: BoxFit.fitWidth),
                      Image.asset('assets/images/BB.gif', fit: BoxFit.fitWidth),
                      Image.asset('assets/images/CC.gif', fit: BoxFit.fitWidth),
                      Image.asset('assets/images/DD.gif', fit: BoxFit.fitWidth),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}