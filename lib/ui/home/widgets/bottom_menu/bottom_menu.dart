import 'package:flutter/material.dart';
import 'package:nubank_ui/ui/home/widgets/bottom_menu/item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {
  final bool visible;

  const BottomMenu({Key key, this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 80.0, end: 0.0),
      duration: Duration(milliseconds: 400),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          bottom: visible ? 0 + MediaQuery.of(context).padding.bottom : 0,
          left: value,
          right: value * -1,
          height: MediaQuery.of(context).size.height * .14,
          child: IgnorePointer(
            ignoring: !visible,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 200),
              opacity: visible ? 1 : 0,
              child: Container(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ItemMenuBottom(
                      icon: Icons.person_add,
                      text: "Indicar amigos",
                    ),
                    ItemMenuBottom(
                      icon: Icons.phone_android,
                      text: "Recarga de celular",
                    ),
                    ItemMenuBottom(
                      icon: Icons.chat,
                      text: "Cobrar",
                    ),
                    ItemMenuBottom(
                      icon: Icons.monetization_on,
                      text: "Empréstimos",
                    ),
                    ItemMenuBottom(
                      icon: Icons.move_to_inbox,
                      text: "Depositar",
                    ),
                    ItemMenuBottom(
                      icon: Icons.mobile_screen_share,
                      text: "Transferir",
                    ),
                    ItemMenuBottom(
                      icon: Icons.format_align_center,
                      text: "Ajustar limite",
                    ),
                    ItemMenuBottom(
                      icon: Icons.chrome_reader_mode,
                      text: "Pagar",
                    ),
                    ItemMenuBottom(
                      icon: Icons.lock_open,
                      text: "Bloquear cartão",
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
