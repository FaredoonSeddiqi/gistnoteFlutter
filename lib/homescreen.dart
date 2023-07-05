import 'package:flutter/material.dart';
import 'package:gitnote/login.dart';
import 'package:gitnote/person.dart';

import 'gridlayout.dart';
import 'listlayout.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  bool _isListLayout = true;

  List<Person> _people = List.generate(
    20,
    (index) => Person(
      name: 'Person ${index + 1}',
      date: 'Date ${index + 1}',
      time: 'Time ${index + 1}',
      keyword: 'Keyword ${index + 1}',
      notebook: 'Notebook ${index + 1}',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 7, 225, 149),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "@ M U M B A",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                width: 10,
              ), // SizedBox
              Expanded(
                child: Container(
                  width: 40,
                  height: 28,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 7, 225, 149),
                      isDense: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15.0),
                      hintText: "Search Notes...",
                      hintStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ), // TextStyle
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 26,
                        color: Colors.white,
                      ), // Icon

                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.white,
                        ), // BorderSide
                      ), // OutlineInputBorder
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.white,
                        ), // BorderSide
                      ), // OutlineInputBorder
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.white,
                        ), // BorderSide
                      ), // OutlineInputBorder
                    ), // InputDecoration
                  ),
                ), // TextField
              ), // Expanded
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 27,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => pro()));
                    },
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    )),
              ),
            ],
          ),

          // Row
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 290),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          _isListLayout = !_isListLayout;
                        });
                      },
                      icon: Icon(Icons.grid_view_rounded)),
                ),
                Container(
                  height: 25,
                  width: 2,
                  color: Colors.black,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _isListLayout = !_isListLayout;
                      });
                    },
                    icon: Icon(Icons.view_list)),
              ],
            ),
            Expanded(
              child: _isListLayout
                  ? PersonListScreen()
                  : PersonGridScreen(people: _people),
            ),
          ],
        ));
  }
}
