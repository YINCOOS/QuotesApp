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
            Text(
              quoteText,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              quoteAuthor,
              style: TextStyle(fontSize: 20),
            ),
          ])),
    );
  }
}
