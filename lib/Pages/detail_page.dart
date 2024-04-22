import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title; // Declare title as a member of DetailPage

  // Add the title parameter to the constructor and initialize it
  const DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // Use the title in the AppBar
      ),
      body: Center(
        child: Text('Details for $title'), // Display title in the body
      ),
    );
  }
}

