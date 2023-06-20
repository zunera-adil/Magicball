import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text('Ask Me Anyting'),
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int BallNo = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Center(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      BallNo = Random().nextInt(5) + 1;
                    });
                    print('clicked');
                  },
                  child: Image(
                    width: 300,
                    height: 600,
                    image: AssetImage('images/ball$BallNo.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
