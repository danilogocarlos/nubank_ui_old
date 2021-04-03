import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const HomeAppBar({
    this.showMenu,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Container(
            color: Colors.purple[800],
            height: MediaQuery.of(context).size.height * .20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/nubank-logo-3.png',
                      height: 30,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Danilo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                Icon(showMenu ? Icons.expand_less : Icons.expand_more)
              ],
            ),
          )
        ],
      ),
    );
  }
}
