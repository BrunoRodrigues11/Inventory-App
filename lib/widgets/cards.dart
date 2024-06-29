import 'package:flutter/material.dart';

class CardDash extends StatefulWidget {
  Icon icone;
  String nome;
  String quantidade;
  Color cor;
  void Function() onTap;

  CardDash(
      {super.key,
      required this.icone,
      required this.nome,
      required this.quantidade,
      required this.cor,
      required this.onTap});

  @override
  State<CardDash> createState() => _CardDashState();
}

class _CardDashState extends State<CardDash> {
  @override
  Widget build(BuildContext context) {
    // Color(0xffE4E9F7),
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: widget.cor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(
                  0, 3), // deslocamento horizontal e vertical da sombra
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    widget.icone,
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.quantidade,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.nome,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
