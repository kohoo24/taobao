import 'package:flutter/material.dart';

class Tag_grey extends StatelessWidget {
  final List<String> tags;

  const Tag_grey({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: tags.map((tag) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 1.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(2.0),
          ),
          child: Text(
            tag,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 11.0,
            ),
          ),
        );
      }).toList(),
    );
  }
}
