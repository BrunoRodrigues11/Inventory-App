import 'package:flutter/material.dart';

class InputDefault extends StatelessWidget {
  String label;
  String hint;

  InputDefault({
    super.key,
    required this.hint,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: const Icon(Icons.search),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
