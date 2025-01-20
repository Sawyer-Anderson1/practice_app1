import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

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
        child: Center(
          child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white30,
                  width: 10.0
                ),
              ),
              child: Image(
                image: AssetImage("assets/ninja.jpg"),
              ),
            ),
            Text(
              "ID: 2345-23",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}

