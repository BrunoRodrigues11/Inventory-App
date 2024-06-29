import 'package:flutter/material.dart';
import 'package:inventory_app/pages/computers/computers.dart';
import 'package:inventory_app/pages/home/home.dart';
import 'package:inventory_app/pages/printers/printers.dart';

class InitHomePage extends StatefulWidget {
  const InitHomePage({super.key});

  @override
  State<InitHomePage> createState() => _InitHomePageState();
}

class _InitHomePageState extends State<InitHomePage> {
  int index = 0;
  final screens = const [
    Home(),
    PrintersPage(),
    ComputersPage(),
    Center(
      child: Text(
        "PESQUISAR",
        style: TextStyle(fontSize: 72),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (value) => setState(() => index = value),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.print_outlined),
                selectedIcon: Icon(Icons.print),
                label: "Impressoras"),
            NavigationDestination(
                icon: Icon(Icons.computer_outlined),
                selectedIcon: Icon(Icons.computer),
                label: "Computadores"),
            NavigationDestination(
                icon: Icon(Icons.smartphone_outlined),
                selectedIcon: Icon(Icons.smartphone),
                label: "Celulares"),
          ],
        ),
      ),
    );
  }
}
