import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Ebay extends StatefulWidget {
  const Ebay({Key? key}) : super(key: key);

  @override
  State<Ebay> createState() => _EbayState();
}

class _EbayState extends State<Ebay> {
  double _progress = 0;
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    WebUri url = WebUri("https://www.ebay.com");

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome To Ebay',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: url,
              ),
              onWebViewCreated: (InAppWebViewController controller) {
                inAppWebViewController = controller;
              },
              onLoadStart: (InAppWebViewController controller, Uri? request) {
                setState(() {
                  _progress = 0;
                });
              },
              onLoadStop: (InAppWebViewController controller, Uri? request) {
                setState(() {
                  _progress = 1;
                });
              },
              onLoadError: (InAppWebViewController controller, Uri? url,
                  int code, String message) {
                print("Error loading page: $code - $message");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error loading page: $message'),
                    duration: const Duration(seconds: 5),
                  ),
                );
              },
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {
                setState(() {
                  _progress = progress / 100;
                });
              },
            ),
            if (_progress < 1)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: LinearProgressIndicator(
                  value: _progress,
                  backgroundColor: Colors.transparent,
                  color: Colors.blue,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
