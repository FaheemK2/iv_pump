import 'package:flutter/material.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload'),
      ),
      body: const Center(
        child: Text('This is the Upload page.'),
      ),
    );
  }
}
