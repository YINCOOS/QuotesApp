import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: ElevatedButton(
                child: Text("Go back"),
                onPressed: () =>
                    Navigator.of(context).pop("Hello from second screen"))),
      ),
    );
  }
}
