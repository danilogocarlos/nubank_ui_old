import 'package:flutter/material.dart';

class HomePageViewIndicators extends StatelessWidget {
  final int currentIndex;
  final double top;
  final bool visible;

  Color getColor(int index) =>
      index == currentIndex ? Colors.white : Colors.white38;

  const HomePageViewIndicators(
      {Key key, this.currentIndex, this.top, this.visible})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 100),
          opacity: visible ? 1 : 0,
          child: Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: 7,
                height: 7,
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: getColor(0),
                  shape: BoxShape.circle,
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: 7,
                height: 7,
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: getColor(1),
                  shape: BoxShape.circle,
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: 7,
                height: 7,
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: getColor(2),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ));
  }
}
