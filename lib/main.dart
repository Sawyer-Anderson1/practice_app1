import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
            "Ninja ID Card",
            style: TextStyle(
              color: Colors.white,
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 5.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(10.0, 75.0, 10.0, 75.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white30,
                  width: 10.0
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Container(
                    child: Image(
                      alignment: Alignment.center,
                      image: AssetImage("assets/ninja.jpg"),
                                  ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.white30,
            thickness: 1.0,
          ),
          Text(
            "NAME:",
            style: TextStyle(
              color: Colors.white30,
              letterSpacing: 2,
              fontSize: 20,
            ),
          ),
          Text(
            "Sawyer Anderson",
            style: TextStyle(
              color: Colors.redAccent,
              letterSpacing: 2,
              fontSize: 30,
            ),
          ),
          Text(
            "ID:",
            style: TextStyle(
              color: Colors.white30,
              letterSpacing: 2,
              fontSize: 20,
            ),
          ),
          Text(
            "2345-23",
            style: TextStyle(
              color: Colors.redAccent,
              letterSpacing: 2,
              fontSize: 30,
            ),
          ),
          Text(
            "Ninja Level:",
            style: TextStyle(
              color: Colors.white30,
              letterSpacing: 2,
              fontSize: 20,
            ),
          ),
          Text(
            "$ninjaLevel",
            style: TextStyle(
              color: Colors.redAccent,
              letterSpacing: 2,
              fontSize: 30,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                Text(
                  "sawyerlynnanderson@icloud.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35.0,
          )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        backgroundColor: Colors.redAccent,
        elevation: 100,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
          "Level Up!",
          style: TextStyle(
              color: Colors.white
          ),
          ),
        ),
      ),
    );
  }
}

