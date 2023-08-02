import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftdicenumber = Random().nextInt(6) + 1;
  int rightdicenumber = Random().nextInt(6) + 1;

  void roll() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image(
                      image: AssetImage(
                          'assets/images/dice-png-$leftdicenumber.png'),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Image(
                            image: AssetImage(
                                'assets/images/dice-png-$rightdicenumber.png'))))
              ],
            ),
            ElevatedButton(
              onPressed: roll, // Button is disabled and won't respond to taps.
              child: Text('roll'),
            ),
          ],
        ),
      ),
    );
  }
}
