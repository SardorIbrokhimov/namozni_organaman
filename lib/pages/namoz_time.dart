import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:namozni_organaman/pages/home_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  static const String id = 'web';

  const WebViewExample({Key? key, this.cookieManager}) : super(key: key);

  final CookieManager? cookieManager;

  @override
  State<WebViewExample> createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  double progres = 0;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff0C8744),
        title: const Text('Namoz Vaqtlari'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            minHeight: 3,
            value: progres,
            color: Color(0xff0C8744),
            backgroundColor: Colors.red,
          ),
          Expanded(
            child: WebView(
              initialUrl: 'https://namozvaqti.uz/',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
              gestureNavigationEnabled: true,
              backgroundColor: const Color(0x00000000),
              onProgress: (progres) => setState(
                () {
                  this.progres = progres / 100;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
