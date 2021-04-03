import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.credit_card,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Cartão de crédito",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FATURA ATUAL",
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  text: "R\$ ",
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 20,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "8.950",
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ",58",
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  text: "Limite disponível ",
                                  style: TextStyle(color: Colors.black87),
                                  children: [
                                    TextSpan(
                                      text: "R\$ 14.000,00",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .05),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                      bottom: 12,
                      left: 10,
                      right: 15,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        width: 8,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.orange,
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart, color: Colors.grey),
                  SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      "Compra mais recente em supermercado no valor de R\$ 30,00 na sexta",
                      style: TextStyle(color: Colors.black87, fontSize: 13),
                    ),
                  ),
                  Icon(Icons.chevron_right, color: Colors.grey[400]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
