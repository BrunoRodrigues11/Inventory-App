import 'package:flutter/material.dart';

class ComputersPage extends StatefulWidget {
  const ComputersPage({super.key});

  @override
  State<ComputersPage> createState() => _ComputersPageState();
}

class _ComputersPageState extends State<ComputersPage> {
  bool isSelectedAll = true;
  bool isSelectedNotebook = false;
  bool isSelectedDesktop = false;

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
                "Computadores",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Pesquisar",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
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
                      isSelectedNotebook = false;
                      isSelectedDesktop = false;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: FilterChip(
                  label: const Text("Notebook"),
                  selected: isSelectedNotebook,
                  onSelected: (value) {
                    setState(() {
                      isSelectedAll = false;
                      isSelectedNotebook = value;
                      isSelectedDesktop = false;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: FilterChip(
                  label: const Text("Desktop"),
                  selected: isSelectedDesktop,
                  onSelected: (value) {
                    setState(() {
                      isSelectedAll = false;
                      isSelectedNotebook = false;
                      isSelectedDesktop = value;
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
                  title: Text("COMP- $index"),
                  subtitle: const Text("DELL Vostro 3520"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
