import 'package:flutter/material.dart';
import 'dart:math' as math;

class InfiniteScroll extends StatefulWidget {
  @override
  _InfiniteScrollState createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScroll> {
  Color _randomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, position) {
          return Scaffold(
            body: InkWell(
              onTap: () {
                print("Tapped!");
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [_randomColor(), _randomColor()]),
                ),
                child: Center(
                    child: Text(
                  "HI",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          );
        });
  }
}
