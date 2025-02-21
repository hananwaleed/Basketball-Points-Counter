import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int TeamApoints = 0;
  int TeamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "POINTS COUNTER",
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Divider(
              color: Colors.green[400],
              thickness: 1,
              height: 2,
              indent: 25,
              endIndent: 25,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 500,
                        child: Column(
                          children: [
                            Text(
                              "TEAM A",
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "$TeamApoints",
                              style: TextStyle(
                                fontSize: 140,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 7),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: Size(160, 60),
                                elevation: 1,
                                shadowColor: Colors.lightGreen,
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamApoints += 1;
                                });
                              },
                              child: Text(
                                " Add 1 Point",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: Size(160, 60),
                                elevation: 1,
                                shadowColor: Colors.lightGreen,
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamApoints += 2;
                                });
                              },
                              child: Text(
                                " Add 2 Point",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: Size(160, 60),
                                elevation: 1,
                                shadowColor: Colors.lightGreen,
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamApoints += 3;
                                });
                              },
                              child: Text(
                                " Add 3 Point",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 450,
                        child: VerticalDivider(
                          color: Colors.green[600],
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        child: Column(
                          children: [
                            Text(
                              "TEAM B",
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "$TeamBpoints",
                              style: TextStyle(
                                fontSize: 140,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 7),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: Size(160, 60),
                                elevation: 1,
                                shadowColor: Colors.lightGreen,
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamBpoints += 1;
                                });
                              },
                              child: Text(
                                " Add 1 Point",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: Size(160, 60),
                                elevation: 1,
                                shadowColor: Colors.lightGreen,
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamBpoints += 2;
                                });
                              },
                              child: Text(
                                " Add 2 Point",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: Size(160, 60),
                                elevation: 1,
                                shadowColor: Colors.lightGreen,
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamBpoints += 3;
                                });
                              },
                              child: Text(
                                " Add 3 Point",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(160, 60),
                      elevation: 1,
                      shadowColor: Colors.lightGreen,
                    ),
                    onPressed: () {
                      setState(() {
                        TeamApoints = 0;
                        TeamBpoints = 0;
                      });
                    },
                    child: Text(
                      "RESET",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
