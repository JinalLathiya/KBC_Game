import 'package:flutter/material.dart';

import 'home.dart';


class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Congratulations... !!!",
              style: TextStyle(
                color: Colors.green,
                fontSize: 26,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Your Answer Is Correct",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Your Won",
              style: TextStyle(
                color: Color(0xffc78640),
                fontSize: 20,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "$r",
              style: const TextStyle(
                color: Color(0xffc78640),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (i < 9) {
                    Navigator.of(context).pushNamed('/');
                    i++;
                  } else {
                    Navigator.of(context).pushNamed('Forthpage');
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.withOpacity(0.2),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              ),
              child: const Text(
                "Next",
                style: TextStyle(
                  color: Color(0xffd6d6d6),
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
