import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  int TeamA = 0;

  int TeamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Center(
            child: Text(
              "Points oF BasketBall",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          "Team A",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      Text(
                        "$TeamA",
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 40),
                        ),
                        onPressed: () {
                          TeamA++;
                          print("$TeamA");
                          setState(() {});
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 40),
                        ),
                        onPressed: () {
                          TeamA = TeamA + 2;

                          setState(() {});
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 40),
                        ),
                        onPressed: () {
                          TeamA = TeamA + 3;
                          setState(() {});
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    endIndent: 70,
                    indent: 70,
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          "Team B",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      Text(
                        "$TeamB",
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 40),
                        ),
                        onPressed: () {
                          setState(() {});
                          TeamB++;
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 40),
                        ),
                        onPressed: () {
                          setState(() {});
                          TeamB = TeamB + 2;
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 40),
                        ),
                        onPressed: () {
                          TeamB = TeamB + 3;
                          setState(() {});
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 40),
              ),
              onPressed: () {
                TeamB = 0;
                TeamA = 0;
                setState(() {});
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
