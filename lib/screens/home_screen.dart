import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:quotesapp/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              var url = Uri.parse('https://type.fit/api/quotes');
              var response = await http.get(url);
              print('Response status: ${response.statusCode}');
              print('Response body: ${response.body}');
              var data = jsonDecode(response.body);

              String quote = data[0]["text"];
              String author = data[0]["author"];

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondScreen(
                        quoteText: quote,
                        quoteAuthor: author,
                      )));
            },
            child: Text("Go to next Screen"),
          ),
        ),
      ),
    );
  }
}
