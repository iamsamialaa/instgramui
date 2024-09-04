import 'package:flutter/material.dart';
import '../Utils/feed.dart';
import '../Utils/story.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List people = [
    'Sami',
    'Alaa',
    'Smsm',
    'mo',
    'koko',
    'sasa',
    'meo',
    'm',
    'm'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            // Stories
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: people.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Story(name: people[index]);
                },
              ),
            ),
            // Feed
            Expanded(
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return Feed(name: people[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
