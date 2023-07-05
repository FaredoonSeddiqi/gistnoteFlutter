import 'package:flutter/material.dart';

class proview extends StatefulWidget {
  const proview({super.key});

  @override
  State<proview> createState() => _proviewState();
}

class _proviewState extends State<proview> {
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
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  backgroundImage: AssetImage('image/proimage.jpg'),
                ),
              )
            ],
          ),

          // Row
        ),
        body: Column(children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              width: 130,
              height: 130,
              child: CircleAvatar(
                backgroundImage: AssetImage('image/proimage.jpg'),
              ),
            ),
          ),
          Text(
            'Anjela',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Container(
            child: SizedBox(
              height: 30.0,
              width: 140.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    'View GitHub Profile',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 10.0),
                  ))),
            ),
          ),
        ]));
  }
}
