import 'package:flutter/material.dart';

import 'list.dart';
import 'model.dart';

int i = 0; // index
int r = 0; // rupees

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: IndexedStack(
              index: i,
              children: question.map((e) => displayquestion(e)).toList(),
            )),
            Expanded(
              child: IndexedStack(
                index: i,
                children: question.map((e) => displayanswer(e)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget displayquestion(Q_Bank q) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: q.mycolor,
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              height: 100,
              width: 410,
              child: Text(
                "${q.id}. ${q.title}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget displayanswer(Q_Bank q) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: Colors.black,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (q.ans == "A") {
                              if (i <= 2) {
                                r += 1000;
                              } else if (i == 3) {
                                r += 2000;
                              } else {
                                r = r * 2;
                              }
                              Navigator.of(context).pushNamed('Secondpage');
                            } else {
                              Navigator.of(context).pushNamed('Thirdpage');
                            }
                          });
                        },
                        child: Text(
                          q.o1,
                          style: TextStyle(
                            color: Color(0xffa8a8a9),
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1e1f23),
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 50,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (q.ans == "B") {
                              if (i <= 2) {
                                r += 1000;
                              } else if (i == 3) {
                                r += 2000;
                              } else {
                                r = r * 2;
                              }
                              Navigator.of(context).pushNamed('Secondpage');
                            } else {
                              Navigator.of(context).pushNamed('Thirdpage');
                            }
                          });
                        },
                        child: Text(
                          q.o2,
                          style: TextStyle(
                            color: Color(0xffa8a8a9),
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1e1f23),
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (q.ans == "C") {
                              if (i <= 2) {
                                r += 1000;
                              } else if (i == 3) {
                                r += 2000;
                              } else {
                                r = r * 2;
                              }
                              Navigator.of(context).pushNamed('Secondpage');
                            } else {
                              Navigator.of(context).pushNamed('Thirdpage');
                            }
                          });
                        },
                        child: Text(
                          q.o3,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffa8a8a9),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1e1f23),
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 50,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (q.ans == "D") {
                              if (i <= 2) {
                                r += 1000;
                              } else if (i == 3) {
                                r += 2000;
                              } else {
                                r = r * 2;
                              }
                              Navigator.of(context).pushNamed('Secondpage');
                            } else {
                              Navigator.of(context).pushNamed('Thirdpage');
                            }
                          });
                        },
                        child: Text(
                          q.o4,
                          style: TextStyle(
                            color: Color(0xffa8a8a9),
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1e1f23),
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
