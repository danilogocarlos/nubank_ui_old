import 'package:flutter/material.dart';
import 'package:nubank_ui/ui/home/widgets/bottom_menu/bottom_menu.dart';
import 'package:nubank_ui/ui/home/widgets/home_app_bar.dart';
import 'package:nubank_ui/ui/home/widgets/home_menu/home_menu.dart';
import 'package:nubank_ui/ui/home/widgets/home_page_view/home_page_view.dart';
import 'package:nubank_ui/ui/home/widgets/home_page_view/home_page_view_indicators.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;
  double _yPosition;

  @override
  void initState() {
    _showMenu = false;
    _currentIndex = 0;
    _yPosition = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_yPosition == 0) _yPosition = _screenHeight * .24;
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          HomeAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
                _yPosition =
                    _showMenu ? _screenHeight * .75 : _screenHeight * .24;
              });
            },
          ),
          HomeMenu(
            top: _screenHeight * .20,
            visible: _showMenu,
          ),
          BottomMenu(visible: !_showMenu),
          HomePageViewIndicators(
            visible: !_showMenu,
            top: _screenHeight * .70,
            currentIndex: _currentIndex,
          ),
          HomePageView(
            showMenu: _yPosition > _screenHeight * .24,
            top: _yPosition,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            onPanUpdate: (details) {
              double initialPosition = _screenHeight * .24;
              double finalPosition = _screenHeight * .75;
              double middlePosition = (finalPosition - initialPosition) / 2.0;
              setState(() {
                _yPosition += details.delta.dy;
                _yPosition = _yPosition > initialPosition
                    ? _yPosition
                    : _screenHeight * .24;

                _yPosition = _yPosition < finalPosition
                    ? _yPosition
                    : _screenHeight * .75;

                if (_yPosition != finalPosition && details.delta.dy > 0) {
                  _yPosition =
                      _yPosition > initialPosition + middlePosition - 150
                          ? finalPosition
                          : _yPosition;
                }

                if (_yPosition != initialPosition && details.delta.dy < 0) {
                  _yPosition =
                      _yPosition < finalPosition ? initialPosition : _yPosition;
                }

                _showMenu = (_yPosition == finalPosition);
              });
            },
          ),
        ],
      ),
    );
  }
}
