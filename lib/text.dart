import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const myText = [
    'Hi Madhuri ...',
    'I Love You ...',
    'I want to kiss you ...',
    'and I will Marry you. ',
    'Hi Madhuri ...\nI Love You ...\nI want to kiss you ...\nand I will Marry you.'
  ];
  static const buttonText = [
    'Click here',
    'Click again',
    'Click one more time',
    'See All',
    'Start over',
  ];
  int _counter = 0;

  void _incrementCounter() {
    if (_counter < 4) {
      setState(() {
        _counter++;
      });
    } else {
      setState(() {
        _counter = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 300,
              child: Center(
                child: Text(
                  myText[_counter],
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: _incrementCounter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    buttonText[_counter],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
