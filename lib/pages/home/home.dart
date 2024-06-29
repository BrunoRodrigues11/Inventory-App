import 'package:flutter/material.dart';
import 'package:inventory_app/widgets/cards.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  body() {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Center(
              child: Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    height: 500,
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1.30,
                      children: [
                        CardDash(
                          icone: const Icon(
                            Icons.print,
                            color: Colors.white,
                            size: 35,
                          ),
                          nome: "Impressoras",
                          quantidade: "40",
                          cor: const Color(0xff0037EB),
                          //#0a5c5a
                          onTap: () {
                            // Navigator.pushNamed(context, '/computers');
                          },
                        ),
                        CardDash(
                          icone: const Icon(
                            Icons.computer,
                            color: Colors.white,
                            size: 35,
                          ),
                          nome: "Computadores",
                          quantidade: "500",
                          cor: const Color(0xff046CDB),
                          //#0a5c5a
                          onTap: () {
                            // Navigator.pushNamed(context, '/computers');
                          },
                        ),
                        CardDash(
                          icone: const Icon(
                            Icons.smartphone,
                            color: Colors.white,
                            size: 35,
                          ),
                          nome: "Celulares",
                          quantidade: "75",
                          cor: const Color(0xff49A2E4),
                          //#0a5c5a
                          onTap: () {
                            // Navigator.pushNamed(context, '/computers');
                          },
                        ),
                        CardDash(
                          icone: const Icon(
                            Icons.headset,
                            color: Colors.white,
                            size: 35,
                          ),
                          nome: "Headsets",
                          quantidade: "10",
                          cor: Color.fromARGB(255, 83, 178, 251),
                          //#0a5c5a
                          onTap: () {
                            // Navigator.pushNamed(context, '/computers');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
