import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  final String name;
  const Feed({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(5)),
            height: 300,
          ),
        ),
      ],
    );
  }
}
