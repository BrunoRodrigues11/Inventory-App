import 'package:flutter/material.dart';
import 'package:inventory_app/widgets/inputs.dart';

class PrintersPage extends StatefulWidget {
  const PrintersPage({super.key});

  @override
  State<PrintersPage> createState() => _PrintersPageState();
}

class _PrintersPageState extends State<PrintersPage> {
  bool isSelectedAll = true;
  bool isSelectedLaser = false;
  bool isSelectedTermic = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
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
                "Impressoras",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: InputDefault(
                hint: "Buscar impressora",
                label: "Buscar impressora",
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 10),
                child: FilterChip(
                  label: const Text("Todos"),
                  selected: isSelectedAll,
                  onSelected: (value) {
                    setState(() {
                      isSelectedAll = value;
                      isSelectedLaser = false;
                      isSelectedTermic = false;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: FilterChip(
                  label: const Text("Laser"),
                  selected: isSelectedLaser,
                  onSelected: (value) {
                    setState(() {
                      isSelectedAll = false;
                      isSelectedLaser = value;
                      isSelectedTermic = false;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: FilterChip(
                  label: const Text("Térmica"),
                  selected: isSelectedTermic,
                  onSelected: (value) {
                    setState(() {
                      isSelectedAll = false;
                      isSelectedLaser = false;
                      isSelectedTermic = value;
                    });
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("IMP- $index"),
                  subtitle: const Text("ZEBRA ZD420"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
