import 'package:flutter/material.dart';

class Tag_orange extends StatelessWidget {
  final List<String> tags;

  const Tag_orange({super.key, required this.tags});

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
              color: Colors.orange,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(2.0),
          ),
          child: Text(
            tag,
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 11.0,
            ),
          ),
        );
      }).toList(),
    );
  }
}
