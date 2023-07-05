import 'package:flutter/material.dart';
import 'package:gitnote/profileview.dart';

class gistpage extends StatefulWidget {
  const gistpage({super.key});

  @override
  State<gistpage> createState() => _gistpageState();
}

class _gistpageState extends State<gistpage> {
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => proview()));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  backgroundImage: AssetImage('image/proimage.jpg'),
                ),
              )
            ],
          ),

          // Row
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 18.0),
                width: 350.0,
                height: 40.0,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter gist Discriptions...",
                    hintStyle: TextStyle(fontSize: 14.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 18.0),
                width: 350.0,
                height: 40.0,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter file Name...",
                    hintStyle: TextStyle(fontSize: 14.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 18.0),
                child: SizedBox(
                  width: 350.0,
                  height: 200.0,
                  child: TextField(
                    maxLines: 30,
                    decoration: InputDecoration(
                      hintText: "Enter file Contents...",
                      hintStyle: TextStyle(fontSize: 14.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 200.0),
                child: SizedBox(
                  height: 30.0,
                  width: 130.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 7, 225, 149),
                      ),
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'Add file',
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 200.0),
                child: SizedBox(
                  height: 30.0,
                  width: 130.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 7, 225, 149),
                      ),
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'Create gist',
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
              )
            ],
          ),
        ));
  }
}
