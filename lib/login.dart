import 'package:flutter/material.dart';
import 'package:gitnote/gist.dart';

class pro extends StatefulWidget {
  const pro({super.key});

  @override
  State<pro> createState() => _proState();
}

class _proState extends State<pro> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 18),
      backgroundColor: Colors.blue,
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/log.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login page",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                suffixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "password",
                suffixIcon: Icon(Icons.password_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => gistpage()));
              },
              child: Text("Login"),
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}
