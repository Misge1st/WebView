import 'package:flutter/material.dart';
import 'package:webview/home.dart';
// import 'package:webview/homee.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Web View'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: const HomePage(),
    ),
  ));
}
