import 'package:flutter/material.dart';
import 'person.dart';

class PersonGridScreen extends StatelessWidget {
  final List<Person> people;

  PersonGridScreen({required this.people});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.5,
        ),
        itemCount: people.length,
        itemBuilder: (context, index) {
          final person = people[index];
          return GestureDetector(
            onTap: () {
              // Handle item click
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(person.name),
                  Text('${person.date}, ${person.time}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
