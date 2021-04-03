import 'package:flutter/material.dart';
import 'package:nubank_ui/ui/home/widgets/home_menu/item_menu.dart';

class HomeMenu extends StatelessWidget {
  final double top;
  final bool visible;

  const HomeMenu({Key key, this.top, this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 100),
        opacity: visible ? 1 : 0,
        child: Container(
          height: MediaQuery.of(context).size.height * .55,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Image.network(
                  'https://pngimg.com/uploads/qr_code/qr_code_PNG24.png',
                  height: 80,
                  color: Colors.white,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Banco ',
                    style: TextStyle(fontSize: 12),
                    children: [
                      TextSpan(
                        text: '260 - Nu Pagamentos S.A',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: 'Agência ',
                    style: TextStyle(fontSize: 12),
                    children: [
                      TextSpan(
                        text: '0001',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: 'Conta ',
                    style: TextStyle(fontSize: 12),
                    children: [
                      TextSpan(
                        text: '000000-0',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      ItemMenu(icon: Icons.info_outline, text: "Me ajuda"),
                      ItemMenu(icon: Icons.person_outline, text: "Perfil"),
                      ItemMenu(
                          icon: Icons.settings_outlined,
                          text: "Configurar conta"),
                      ItemMenu(
                          icon: Icons.credit_card_outlined,
                          text: "Configurar cartão"),
                      ItemMenu(
                          icon: Icons.store_mall_directory_outlined,
                          text: "Pedir conta PJ"),
                      ItemMenu(
                          icon: Icons.phone_android_outlined,
                          text: "Configurações do app"),
                      SizedBox(height: 30),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(width: .7, color: Colors.white54),
                        ),
                        child: RaisedButton(
                          color: Colors.purple[800],
                          highlightColor: Colors.transparent,
                          elevation: 0,
                          focusElevation: 0,
                          hoverElevation: 0,
                          disabledElevation: 0,
                          highlightElevation: 0,
                          splashColor: Colors.purple[900],
                          child: Text(
                            "SAIR DO APP",
                            style: TextStyle(fontSize: 12),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
