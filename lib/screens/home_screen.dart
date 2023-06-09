import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:quotesapp/screens/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String quote = "";
  String author = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                quote,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "- $author",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                var url = Uri.parse('https://type.fit/api/quotes');
                var response = await http.get(url);
                print('Response body: ${response.body}');
                var data = jsonDecode(response.body);

                quote = data[0]["text"];
                author = data[0]["author"];

                setState(() {});

                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => SecondScreen(
                //           quoteText: quote,
                //           quoteAuthor: author,
                //         )));
              },
              child: Text("Get Quote!"),
            ),
          ],
        ),
      ),
    );
  }
}
