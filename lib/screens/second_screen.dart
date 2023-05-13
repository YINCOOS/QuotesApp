import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String quoteText;
  String quoteAuthor;

  SecondScreen({Key? key, required this.quoteText, required this.quoteAuthor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                quoteText,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "- $quoteAuthor",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ])),
    );
  }
}
