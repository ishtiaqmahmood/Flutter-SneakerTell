import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About")),

      body: const Padding(
        padding: EdgeInsets.all(20),

        child: Text(
          "SneakerTell is a premium sneaker shopping app.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
