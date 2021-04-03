import 'package:flutter/material.dart';
import 'package:nubank_ui/ui/home/widgets/cards/first_card.dart';
import 'package:nubank_ui/ui/home/widgets/cards/home_card.dart';
import 'package:nubank_ui/ui/home/widgets/cards/second_card.dart';
import 'package:nubank_ui/ui/home/widgets/cards/third_card.dart';

class HomePageView extends StatelessWidget {
  final bool showMenu;
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;

  const HomePageView(
      {Key key, this.top, this.onChanged, this.onPanUpdate, this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 80.0, end: 0.0),
      duration: Duration(milliseconds: 400),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return AnimatedPositioned(
          duration: Duration(milliseconds: 250),
          curve: Curves.easeOut,
          top: top,
          height: MediaQuery.of(context).size.height * .45,
          left: value,
          right: value * -1,
          child: GestureDetector(
            onPanUpdate: onPanUpdate,
            child: PageView(
              physics: showMenu
                  ? NeverScrollableScrollPhysics()
                  : BouncingScrollPhysics(),
              onPageChanged: onChanged,
              children: [
                HomeCard(child: FirstCard()),
                HomeCard(child: SecondCard()),
                HomeCard(child: ThirdCard()),
              ],
            ),
          ),
        );
      },
    );
  }
}
