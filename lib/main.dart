import 'package:flutter/material.dart';
import 'package:webview/aboutpage.dart';
import 'package:webview/homee.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const About(),
                  ),
                );
              },
              icon:
                  const Icon(Icons.info), // Changed to info icon for about page
            ),
            const SizedBox(width: 100),
          ],
          title: const Text('Web View'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: const ShoppingHub(), // Ensure ShoppingHub is defined
      ),
    );
  }
}
