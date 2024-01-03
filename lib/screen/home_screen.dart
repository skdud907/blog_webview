import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://github.com/skdud907?tab=repositories');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
  ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Na0'),
        centerTitle: true,
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
