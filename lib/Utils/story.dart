import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String name;
  const Story({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(name)
        ],
      ),
    );
  }
}
