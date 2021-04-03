import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final Widget child;

  const HomeCard({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: child,
    );
  }
}
